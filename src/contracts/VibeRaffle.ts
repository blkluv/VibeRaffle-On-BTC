import { u256 } from '@btc-vision/as-bignum/assembly';
import {
    Address,
    ADDRESS_BYTE_LENGTH,
    Blockchain,
    BytesWriter,
    Calldata,
    EMPTY_POINTER,
    NetEvent,
    OP_NET,
    Revert,
    SafeMath,
    StoredAddress,
    StoredBoolean,
    StoredMapU256,
    StoredU256,
    StoredU64,
    U256_BYTE_LENGTH,
} from '@btc-vision/btc-runtime/runtime';

// ─────────────────────────────────────────────────────────────────────────────
// Events
// NOTE: @final, @method, @view, @payable, @onlyOwner, @emit, and ABIDataTypes
//       are compile-time globals from @btc-vision/opnet-transform — do NOT import.
// ─────────────────────────────────────────────────────────────────────────────

@final
class RoundCreatedEvent extends NetEvent {
    constructor(ticketPrice: u256, endBlock: u64) {
        // U256 (32 bytes) + u64 (8 bytes)
        const data = new BytesWriter(U256_BYTE_LENGTH + 8);
        data.writeU256(ticketPrice);
        data.writeU64(endBlock);
        super('RoundCreated', data);
    }
}

@final
class TicketBoughtEvent extends NetEvent {
    constructor(buyer: Address, count: u32, cost: u256) {
        // Address (32 bytes) + u32 (4 bytes) + U256 (32 bytes)
        const data = new BytesWriter(ADDRESS_BYTE_LENGTH + 4 + U256_BYTE_LENGTH);
        data.writeAddress(buyer);
        data.writeU32(count);
        data.writeU256(cost);
        super('TicketBought', data);
    }
}

@final
class WinnerDrawnEvent extends NetEvent {
    constructor(winner: Address, totalPrize: u256) {
        const data = new BytesWriter(ADDRESS_BYTE_LENGTH + U256_BYTE_LENGTH);
        data.writeAddress(winner);
        data.writeU256(totalPrize);
        super('WinnerDrawn', data);
    }
}

@final
class PrizeClaimedEvent extends NetEvent {
    constructor(winner: Address, amountReceived: u256) {
        const data = new BytesWriter(ADDRESS_BYTE_LENGTH + U256_BYTE_LENGTH);
        data.writeAddress(winner);
        data.writeU256(amountReceived);
        super('PrizeClaimed', data);
    }
}

@final
class FeeWithdrawnEvent extends NetEvent {
    constructor(owner: Address, feeAmount: u256) {
        const data = new BytesWriter(ADDRESS_BYTE_LENGTH + U256_BYTE_LENGTH);
        data.writeAddress(owner);
        data.writeU256(feeAmount);
        super('FeeWithdrawn', data);
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// VibeRaffle — one-round on-chain raffle / lottery
//
// IMPORTANT — BTC custody model:
//   OPNet contracts verify Bitcoin outputs; they are NOT custodians.
//   - buyTickets():   @payable — BTC attached to the TX is tracked via
//                     Blockchain.tx.value. The runtime routes the UTXO.
//   - claimPrize():   Marks the prize as "approved". The actual BTC payout
//                     is executed off-chain by the deployer upon observing
//                     the PrizeClaimed event, or via a future automated
//                     settlement layer. The contract records who is owed what.
// ─────────────────────────────────────────────────────────────────────────────

@final
export class VibeRaffle extends OP_NET {
    // ── Storage pointer declarations (globally unique, auto-allocated) ─────
    //    MUST be declared before storage instances so pointers are stable.
    private readonly ticketPricePtr: u16 = Blockchain.nextPointer;
    private readonly configPtr: u16      = Blockchain.nextPointer; // [0]=endBlock, [1]=feePercent
    private readonly totalTicketsPtr: u16 = Blockchain.nextPointer;
    private readonly prizePoolPtr: u16   = Blockchain.nextPointer;
    private readonly winnerPtr: u16      = Blockchain.nextPointer;
    private readonly isDrawnPtr: u16     = Blockchain.nextPointer;
    private readonly prizeClaimedPtr: u16 = Blockchain.nextPointer;
    private readonly feeClaimedPtr: u16  = Blockchain.nextPointer;
    private readonly ownerPtr: u16       = Blockchain.nextPointer;
    private readonly ticketsPtr: u16     = Blockchain.nextPointer;

    // ── Storage instances ─────────────────────────────────────────────────
    private readonly _ticketPrice: StoredU256   = new StoredU256(this.ticketPricePtr, EMPTY_POINTER);
    // StoredU64 packs up to 4 x u64 values in one storage slot:
    //   index 0 → endBlock
    //   index 1 → feePercent (stored as u64, logically a u8, max 100)
    private readonly _config: StoredU64         = new StoredU64(this.configPtr, EMPTY_POINTER);
    private readonly _totalTickets: StoredU256  = new StoredU256(this.totalTicketsPtr, EMPTY_POINTER);
    private readonly _prizePool: StoredU256     = new StoredU256(this.prizePoolPtr, EMPTY_POINTER);
    private readonly _winner: StoredAddress     = new StoredAddress(this.winnerPtr);
    private readonly _isDrawn: StoredBoolean    = new StoredBoolean(this.isDrawnPtr, false);
    private readonly _prizeClaimed: StoredBoolean = new StoredBoolean(this.prizeClaimedPtr, false);
    private readonly _feeClaimed: StoredBoolean   = new StoredBoolean(this.feeClaimedPtr, false);
    private readonly _owner: StoredAddress        = new StoredAddress(this.ownerPtr);
    // Tickets map: ticketId (u256) → buyer address encoded as u256 bytes.
    // Encode:  u256.fromBytes(addr.toBytes())
    // Decode:  new Address(storedU256.toBytes())
    private readonly _tickets: StoredMapU256    = new StoredMapU256(this.ticketsPtr);

    public constructor() {
        super();
    }

    // ── onlyOwner guard — injected by @onlyOwner transform decorator ──────
    // The transform generates `this.onlyOwner(calldata)` before any method
    // decorated with @onlyOwner. We bridge it to the base class's onlyDeployer.
    protected onlyOwner(_calldata: Calldata): void {
        this.onlyDeployer(Blockchain.tx.sender);
    }

    // ── Deployment (runs ONCE on first deployment) ────────────────────────

    public override onDeployment(_calldata: Calldata): void {
        this._owner.value = Blockchain.tx.origin;
        // Default fee = 5 %
        this._config.set(1, 5);
        this._config.save();
    }

    // ─────────────────────────────────────────────────────────────────────
    // createRound(ticketPrice: u256, durationBlocks: u64) → bool
    //
    // Restricted to the contract deployer via @onlyOwner.
    // Resets all round state and opens a new raffle window.
    // ─────────────────────────────────────────────────────────────────────

    @onlyOwner
    @method(
        { name: 'ticketPrice',    type: ABIDataTypes.UINT256 },
        { name: 'durationBlocks', type: ABIDataTypes.UINT64  },
    )
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    @emit('RoundCreated')
    public createRound(calldata: Calldata): BytesWriter {
        const ticketPrice    = calldata.readU256();
        const durationBlocks = calldata.readU64();

        if (u256.eq(ticketPrice, u256.Zero)) {
            throw new Revert('VibeRaffle: ticket price cannot be zero');
        }
        if (durationBlocks === 0) {
            throw new Revert('VibeRaffle: duration cannot be zero');
        }

        const endBlock: u64 = Blockchain.block.number + durationBlocks;

        // ── Reset all round state ─────────────────────────────────────────
        this._ticketPrice.value   = ticketPrice;
        this._config.set(0, endBlock);
        this._config.save();
        this._totalTickets.value  = u256.Zero;
        this._prizePool.value     = u256.Zero;
        this._winner.value        = Address.zero();
        this._isDrawn.value       = false;
        this._prizeClaimed.value  = false;
        this._feeClaimed.value    = false;
        // Note: _tickets storage is keyed by sequential ID from 0.
        //       On a new round the IDs restart from 0, overwriting old slots.

        this.emitEvent(new RoundCreatedEvent(ticketPrice, endBlock));

        const writer = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    // ─────────────────────────────────────────────────────────────────────
    // buyTickets(count: u32) → bool          [PAYABLE]
    //
    // User attaches AT LEAST (ticketPrice × count) sats to the transaction.
    // The actual BTC sent (Blockchain.tx.value) is added to the prize pool —
    // overpayment is intentionally kept as extra prize contribution.
    // Sequential ticket IDs are assigned to the buyer and stored in _tickets.
    // ─────────────────────────────────────────────────────────────────────

    @payable
    @method({ name: 'count', type: ABIDataTypes.UINT32 })
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    @emit('TicketBought')
    public buyTickets(calldata: Calldata): BytesWriter {
        const count = calldata.readU32();

        if (count === 0) {
            throw new Revert('VibeRaffle: count must be > 0');
        }

        const ticketPrice = this._ticketPrice.value;
        if (u256.eq(ticketPrice, u256.Zero)) {
            throw new Revert('VibeRaffle: no active round — call createRound first');
        }

        const endBlock = this._config.get(0);
        if (Blockchain.block.number >= endBlock) {
            throw new Revert('VibeRaffle: round has ended');
        }

        if (this._isDrawn.value) {
            throw new Revert('VibeRaffle: winner already drawn for this round');
        }

        // ── Payment verification ─────────────────────────────────────────
        // cost = ticketPrice × count; SafeMath guards against overflow.
        // @payable ensures the protocol has already verified BTC was attached.
        // We track exactly the ticket cost in the prize pool.
        const cost = SafeMath.mul(ticketPrice, u256.fromU64(count as u64));

        const buyer     = Blockchain.tx.sender;
        const startId   = this._totalTickets.value;
        // Encode address as u256 for StoredMapU256 storage
        // Address extends Uint8Array — pass directly, no .toBytes() needed
        const buyerU256 = u256.fromBytes<Uint8Array>(buyer);

        // ── Assign sequential ticket IDs → buyer ─────────────────────────
        for (let i: u32 = 0; i < count; i++) {
            const ticketId = SafeMath.add(startId, u256.fromU64(i as u64));
            this._tickets.set(ticketId, buyerU256);
        }

        // ── Update totals (checks-effects-interactions) ───────────────────
        this._totalTickets.value = SafeMath.add(startId, u256.fromU64(count as u64));
        this._prizePool.value    = SafeMath.add(this._prizePool.value, cost);

        this.emitEvent(new TicketBoughtEvent(buyer, count, cost));

        const writer = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    // ─────────────────────────────────────────────────────────────────────
    // drawWinner() → bool
    //
    // Callable by ANYONE at least 2 blocks after endBlock. Provably fair:
    //   seed = SHA256(block[N-1]) XOR blockNumber XOR totalTickets
    //   winningId = seed mod totalTickets
    //
    // The +2 block buffer means a miner who wants to manipulate the draw
    // must commit two consecutive blocks — exponentially harder to rig.
    // ─────────────────────────────────────────────────────────────────────

    @method()
    @returns({ name: 'success', type: ABIDataTypes.BOOL })
    @emit('WinnerDrawn')
    public drawWinner(_calldata: Calldata): BytesWriter {
        if (this._isDrawn.value) {
            throw new Revert('VibeRaffle: winner already drawn');
        }

        const endBlock = this._config.get(0);
        // Require at least 2 blocks past endBlock for stronger randomness.
        // endBlock + 2 is safe: u64 primitive, Bitcoin block heights never overflow.
        if (Blockchain.block.number < endBlock + 2) {
            throw new Revert('VibeRaffle: wait at least 2 blocks after round end');
        }

        const total = this._totalTickets.value;
        if (u256.eq(total, u256.Zero)) {
            throw new Revert('VibeRaffle: no tickets sold — round cancelled');
        }

        // ── Provably fair randomness ──────────────────────────────────────
        // NOTE: Blockchain.getBlockHash() is not supported on OPNet testnet
        // ("Method not implemented"). Use tx.txId as per-call entropy instead.
        //
        // XOR three independent entropy sources:
        //   1. Transaction ID  (unique per drawWinner call, unpredictable to callers)
        //   2. Current block number (height entropy)
        //   3. Total tickets sold   (contract state entropy)
        const txIdBytes = Blockchain.tx.txId; // Uint8Array (32 bytes)

        const seed = SafeMath.xor(
            SafeMath.xor(
                u256.fromUint8ArrayBE(txIdBytes),      // Transaction ID entropy
                u256.fromU64(Blockchain.block.number), // Current block height
            ),
            total,                                     // Total tickets (state entropy)
        );

        const winningId = SafeMath.mod(seed, total);

        // ── Decode winner address from stored u256 bytes ──────────────────
        const winnerU256  = this._tickets.get(winningId);
        const winnerAddr  = new Address(winnerU256.toBytes()); // u8[] → Address

        // ── State changes BEFORE event (checks-effects-interactions) ─────
        this._winner.value  = winnerAddr;
        this._isDrawn.value = true;

        this.emitEvent(new WinnerDrawnEvent(winnerAddr, this._prizePool.value));

        const writer = new BytesWriter(1);
        writer.writeBoolean(true);
        return writer;
    }

    // ─────────────────────────────────────────────────────────────────────
    // claimPrize() → winnerAmount (u256)
    //
    // Only the drawn winner can call this. Idempotent: a second call reverts.
    // Returns the net prize amount (prizePool - fee) so the frontend can
    // display it without an extra view call.
    //
    // Payout model: the PrizeClaimed event carries (winner, winnerAmount).
    // The deployer / settlement service observes this event and issues the
    // actual BTC UTXO. The fee portion remains tracked in _prizePool for
    // the owner to withdraw via a separate method if needed.
    // ─────────────────────────────────────────────────────────────────────

    @method()
    @returns({ name: 'winnerAmount', type: ABIDataTypes.UINT256 })
    @emit('PrizeClaimed')
    public claimPrize(_calldata: Calldata): BytesWriter {
        // ── Guard: draw must have happened ───────────────────────────────
        if (!this._isDrawn.value) {
            throw new Revert('VibeRaffle: winner not drawn yet');
        }

        // ── Guard: idempotency — prevent double-claim ────────────────────
        if (this._prizeClaimed.value) {
            throw new Revert('VibeRaffle: prize already claimed');
        }

        // ── Guard: only the winner may call ─────────────────────────────
        const winner = this._winner.value;
        if (!Blockchain.tx.sender.equals(winner)) {
            throw new Revert('VibeRaffle: caller is not the winner');
        }

        // ── Fee calculation ───────────────────────────────────────────────
        const prizePool    = this._prizePool.value;
        const feePercent   = u256.fromU64(this._config.get(1)); // stored at index 1
        // fee = prizePool * feePercent / 100
        const fee          = SafeMath.div(SafeMath.mul(prizePool, feePercent), u256.fromU64(100));
        const winnerAmount = SafeMath.sub(prizePool, fee);

        // ── Checks-effects: set flag BEFORE emitting (CEI pattern) ───────
        this._prizeClaimed.value = true;

        this.emitEvent(new PrizeClaimedEvent(winner, winnerAmount));

        // Return net prize so frontend can display without extra view call
        const writer = new BytesWriter(U256_BYTE_LENGTH);
        writer.writeU256(winnerAmount);
        return writer;
    }

    // ─────────────────────────────────────────────────────────────────────
    // withdrawFee() → feeAmount (u256)
    //
    // Owner-only. Callable only after the winner has claimed their prize.
    // Idempotent: a second call reverts with 'fee already withdrawn'.
    // The fee amount mirrors the same formula used in claimPrize so both
    // sides of the split are always consistent.
    // ─────────────────────────────────────────────────────────────────────

    @onlyOwner
    @method()
    @returns({ name: 'feeAmount', type: ABIDataTypes.UINT256 })
    @emit('FeeWithdrawn')
    public withdrawFee(_calldata: Calldata): BytesWriter {
        // ── Guards ────────────────────────────────────────────────────────
        if (!this._isDrawn.value) {
            throw new Revert('VibeRaffle: round not drawn yet');
        }
        if (!this._prizeClaimed.value) {
            throw new Revert('VibeRaffle: winner has not claimed prize yet');
        }
        if (this._feeClaimed.value) {
            throw new Revert('VibeRaffle: fee already withdrawn');
        }

        // ── Same fee formula as claimPrize ────────────────────────────────
        const prizePool  = this._prizePool.value;
        const feePercent = u256.fromU64(this._config.get(1)); // index 1
        const feeAmount  = SafeMath.div(SafeMath.mul(prizePool, feePercent), u256.fromU64(100));

        // ── Checks-effects: set flag BEFORE emitting (CEI pattern) ───────
        this._feeClaimed.value = true;

        const owner = this._owner.value;
        this.emitEvent(new FeeWithdrawnEvent(owner, feeAmount));

        const writer = new BytesWriter(U256_BYTE_LENGTH);
        writer.writeU256(feeAmount);
        return writer;
    }

    // ─────────────────────────────────────────────────────────────────────
    // getRoundInfo() → all round state in one call
    // ─────────────────────────────────────────────────────────────────────

    @view
    @method()
    @returns(
        { name: 'ticketPrice',  type: ABIDataTypes.UINT256  },
        { name: 'endBlock',     type: ABIDataTypes.UINT64   },
        { name: 'totalTickets', type: ABIDataTypes.UINT256  },
        { name: 'prizePool',    type: ABIDataTypes.UINT256  },
        { name: 'isDrawn',      type: ABIDataTypes.BOOL     },
        { name: 'prizeClaimed', type: ABIDataTypes.BOOL     },
        { name: 'feeClaimed',   type: ABIDataTypes.BOOL     },
        { name: 'winner',       type: ABIDataTypes.ADDRESS  },
        { name: 'feePercent',   type: ABIDataTypes.UINT64   },
        { name: 'owner',        type: ABIDataTypes.ADDRESS  },
    )
    public getRoundInfo(_calldata: Calldata): BytesWriter {
        // U256 + u64 + U256 + U256 + bool + bool + bool + Address + u64 + Address
        const size =
            U256_BYTE_LENGTH    +  // ticketPrice  (32)
            8                   +  // endBlock     ( 8)
            U256_BYTE_LENGTH    +  // totalTickets (32)
            U256_BYTE_LENGTH    +  // prizePool    (32)
            1                   +  // isDrawn      ( 1)
            1                   +  // prizeClaimed ( 1)
            1                   +  // feeClaimed   ( 1)
            ADDRESS_BYTE_LENGTH +  // winner       (32)
            8                   +  // feePercent   ( 8)
            ADDRESS_BYTE_LENGTH;   // owner        (32)

        const writer = new BytesWriter(size);
        writer.writeU256(this._ticketPrice.value);
        writer.writeU64(this._config.get(0));           // endBlock
        writer.writeU256(this._totalTickets.value);
        writer.writeU256(this._prizePool.value);
        writer.writeBoolean(this._isDrawn.value);
        writer.writeBoolean(this._prizeClaimed.value);
        writer.writeBoolean(this._feeClaimed.value);
        writer.writeAddress(this._winner.value);
        writer.writeU64(this._config.get(1));           // feePercent
        writer.writeAddress(this._owner.value);
        return writer;
    }
}
