/**
 * VibeRaffle — Step 2: Buy tickets (payable — sends BTC).
 *
 * The BTC amount (ticketPrice × count) is attached to the transaction
 * via the amountAddition parameter of sendTransaction().
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:ACCOUNT_INDEX="1"
 *   $env:CONTRACT_ADDR="0x..."
 *   $env:TICKET_COUNT="5"             # number of tickets to buy (default: 1)
 *   node test/2-buy-tickets.mjs
 *
 * Note: run 0-check-state.mjs first to confirm ticketPrice and endBlock.
 */

import { Address } from '@btc-vision/transaction';
import { JSONRpcProvider } from 'opnet';
import {
    ABI, NETWORK, RPC_URL,
    buildWallet, requireContractAddr, buildContract, sendTxDirect, log,
} from './config.mjs';

const TICKET_COUNT = parseInt(process.env.TICKET_COUNT ?? '1', 10);

async function main() {
    const addr = requireContractAddr();
    const { wallet, provider, ownerAddr } = buildWallet();

    // First, read the current ticket price from the contract (view call)
    const viewContract = buildContract(addr, Address.dead(), provider);
    log('Reading current ticketPrice from contract…');
    const info = await viewContract.getRoundInfo();
    if (info?.revert) {
        console.error(`[REVERT] ${info.revert}`);
        process.exit(1);
    }
    const ticketPrice = info?.properties?.ticketPrice ?? 10_000n;
    const endBlock    = info?.properties?.endBlock ?? 0n;
    const isDrawn     = info?.properties?.isDrawn ?? false;

    log(`ticketPrice : ${ticketPrice} sats`);
    log(`endBlock    : ${endBlock}`);
    log(`isDrawn     : ${isDrawn}`);
    log('');

    if (isDrawn) {
        console.error('[ERROR] Round already drawn — wait for next round.');
        process.exit(1);
    }

    const totalSats = ticketPrice * BigInt(TICKET_COUNT);
    log(`Buying ${TICKET_COUNT} ticket(s) for ${totalSats} sats total.`);
    log('');

    const contract = buildContract(addr, ownerAddr, provider);

    // Payable simulation fails with "Missing to" — use direct encoding instead.
    // sendTxDirect bypasses simulation: encodes calldata + sets p2op manually.
    log('── buyTickets(count) [payable / direct] ─────────────────────');
    await sendTxDirect(
        contract,
        'buyTickets',
        [TICKET_COUNT],
        wallet,
        provider,
        `buyTickets(${TICKET_COUNT})`,
        totalSats,
    );

    log('');
    log('✓ Tickets purchased! Run 0-check-state.mjs to see updated pool.');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
