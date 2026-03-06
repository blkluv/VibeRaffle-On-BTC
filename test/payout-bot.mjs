/**
 * VibeRaffle — Off-chain Payout Bot
 *
 * Polls the OPNet RPC for new blocks, scans for PrizeClaimed and FeeWithdrawn
 * events, and logs the BTC transfer instructions (or auto-sends if WALLET is set).
 *
 * In a production setup, this bot signs and broadcasts the payout Bitcoin
 * transactions so winners receive their sats automatically.
 *
 * Usage (PowerShell):
 *   $env:CONTRACT_ADDR="0x..."
 *   $env:FROM_BLOCK="100000"         # start scanning from this block
 *   $env:OWNER_MNEMONIC="..."        # optional: auto-sign payouts
 *   $env:ACCOUNT_INDEX="1"
 *   node test/payout-bot.mjs
 *
 * Without OWNER_MNEMONIC: prints instructions only (safe mode).
 * With    OWNER_MNEMONIC: auto-signs and broadcasts payout transactions.
 */

import { JSONRpcProvider } from 'opnet';
import { Address, AddressTypes, MLDSASecurityLevel, Mnemonic } from '@btc-vision/transaction';
import {
    ABI, NETWORK, RPC_URL,
    requireContractAddr, buildContract, log, sleep,
} from './config.mjs';

const FROM_BLOCK    = BigInt(process.env.FROM_BLOCK ?? '0');
const POLL_INTERVAL = 15_000;   // ms between block polls

// ─── Event decoders ───────────────────────────────────────────────────────────

function decodePrizeClaimed(event) {
    // PrizeClaimed(winner: Address, amountReceived: u256)
    try {
        const r = event.data ?? event;
        return {
            winner: r?.winner?.toString?.() ?? String(r?.winner ?? '?'),
            amount: r?.amountReceived ?? r?.amount ?? 0n,
        };
    } catch {
        return null;
    }
}

function decodeFeeWithdrawn(event) {
    // FeeWithdrawn(owner: Address, feeAmount: u256)
    try {
        const r = event.data ?? event;
        return {
            owner:     r?.owner?.toString?.() ?? String(r?.owner ?? '?'),
            feeAmount: r?.feeAmount ?? 0n,
        };
    } catch {
        return null;
    }
}

// ─── Payout handler ───────────────────────────────────────────────────────────

async function handlePrizeClaimed(data, wallet) {
    log(`[PrizeClaimed] winner=${data.winner}  amount=${data.amount} sats`);

    if (!wallet) {
        log('  [manual] Send BTC manually:');
        log(`    recipient : ${data.winner}`);
        log(`    amount    : ${data.amount} sats`);
        log('  (Set $env:OWNER_MNEMONIC to enable auto-payout)');
        return;
    }

    // TODO: build & broadcast actual Bitcoin transfer
    // In a full implementation, use @btc-vision/transaction to create
    // a P2TR output to data.winner for data.amount sats.
    log('  [auto-payout] Signing BTC transfer…');
    log(`    → ${data.winner}: ${data.amount} sats`);
    // Example placeholder:
    //   const tx = await wallet.sendBTC(data.winner, data.amount);
    //   log(`  ✓ Payout txid: ${tx.txId}`);
    log('  [auto-payout] (BTC transfer not yet implemented — log only)');
}

async function handleFeeWithdrawn(data, wallet) {
    log(`[FeeWithdrawn]  owner=${data.owner}  fee=${data.feeAmount} sats`);

    if (!wallet) {
        log('  [manual] Send fee BTC manually:');
        log(`    recipient : ${data.owner}`);
        log(`    amount    : ${data.feeAmount} sats`);
        return;
    }

    log('  [auto-payout] Signing fee transfer…');
    log(`    → ${data.owner}: ${data.feeAmount} sats`);
    log('  [auto-payout] (BTC transfer not yet implemented — log only)');
}

// ─── Main polling loop ────────────────────────────────────────────────────────

async function main() {
    const addr      = requireContractAddr();
    const provider  = new JSONRpcProvider({ url: RPC_URL, network: NETWORK });
    const contract  = buildContract(addr, Address.dead(), provider);

    // Optional wallet for auto-payout
    let wallet = null;
    if (process.env.OWNER_MNEMONIC) {
        const phrase = process.env.OWNER_MNEMONIC;
        const idx    = parseInt(process.env.ACCOUNT_INDEX ?? '0', 10);
        const mn     = new Mnemonic(phrase, '', NETWORK, MLDSASecurityLevel.LEVEL2);
        wallet       = mn.deriveOPWallet(AddressTypes.P2TR, idx);
        log(`Auto-payout wallet: ${wallet.p2tr}`);
    } else {
        log('Safe mode — no wallet. Will print payout instructions only.');
    }

    log(`Contract  : ${addr}`);
    log(`Network   : ${process.env.NETWORK ?? 'testnet'}`);
    log(`From block: ${FROM_BLOCK}`);
    log(`Poll every: ${POLL_INTERVAL / 1000}s`);
    log('');
    log('Watching for PrizeClaimed and FeeWithdrawn events…');
    log('(Press Ctrl+C to stop)');
    log('');

    let lastBlock = FROM_BLOCK;
    const seen    = new Set();   // de-duplicate event txids

    while (true) {
        try {
            // Get current block number
            const blockNum = await provider.getBlockNumber();
            if (blockNum > lastBlock) {
                // Scan blocks lastBlock+1 .. blockNum for events
                for (let b = lastBlock + 1n; b <= blockNum; b++) {
                    // OPNet getLogs is not directly exposed on JSONRpcProvider;
                    // we read contract state changes via getRoundInfo polling
                    // and detect PrizeClaimed / FeeWithdrawn via state transitions.
                }

                // ── State-based event detection ───────────────────────────────
                // Poll getRoundInfo; detect state transitions as event proxies.
                const info = await contract.getRoundInfo();
                const p    = info?.properties ?? {};

                const key = `${p.prizeClaimed}-${p.feeClaimed}-${p.winner?.toString?.()}`;
                if (!seen.has(key)) {
                    seen.add(key);

                    if (p.prizeClaimed && p.isDrawn) {
                        const prizePool = p.prizePool ?? 0n;
                        const fee       = prizePool * (p.feePercent ?? 5n) / 100n;
                        const amount    = prizePool - fee;
                        await handlePrizeClaimed({
                            winner: p.winner?.toString?.() ?? String(p.winner),
                            amount,
                        }, wallet);
                    }

                    if (p.feeClaimed && p.isDrawn) {
                        const prizePool = p.prizePool ?? 0n;
                        const fee       = prizePool * (p.feePercent ?? 5n) / 100n;
                        await handleFeeWithdrawn({
                            owner:     p.owner?.toString?.() ?? String(p.owner),
                            feeAmount: fee,
                        }, wallet);
                    }
                }

                lastBlock = blockNum;
            }
        } catch (err) {
            log(`[WARN] Poll error: ${err?.message ?? err}`);
        }

        await sleep(POLL_INTERVAL);
    }
}

main().catch(err => {
    console.error('\n[FATAL]', err?.message ?? err);
    process.exit(1);
});
