/**
 * VibeRaffle — Step 3: Draw the winner.
 *
 * Can be called by ANYONE at least 2 blocks after endBlock.
 * Uses provably fair randomness (prevBlockHash XOR blockNumber XOR totalTickets).
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:ACCOUNT_INDEX="1"
 *   $env:CONTRACT_ADDR="0x..."
 *   node test/3-draw-winner.mjs
 */

import { Address } from '@btc-vision/transaction';
import {
    buildWallet, requireContractAddr, buildContract, sendTxDirect, log, sleep,
} from './config.mjs';

async function main() {
    const addr = requireContractAddr();
    const { wallet, provider, ownerAddr } = buildWallet();

    // Read state first
    const viewContract = buildContract(addr, Address.dead(), provider);
    log('Checking round state…');
    const info = await viewContract.getRoundInfo();
    if (info?.revert) { console.error(`[REVERT] ${info.revert}`); process.exit(1); }

    const p = info?.properties ?? {};
    log(`endBlock     : ${p.endBlock}`);
    log(`totalTickets : ${p.totalTickets}`);
    log(`isDrawn      : ${p.isDrawn}`);
    log('');

    if (p.isDrawn) {
        log('Winner already drawn!');
        log(`Winner: ${p.winner?.toString?.() ?? p.winner}`);
        process.exit(0);
    }

    if (p.totalTickets === 0n) {
        console.error('[ERROR] No tickets sold — cannot draw.');
        process.exit(1);
    }

    const contract = buildContract(addr, ownerAddr, provider);

    // drawWinner() calls Blockchain.getBlockHash() which OOMs in simulation.
    // Use sendTxDirect to bypass simulation entirely.
    log('── drawWinner() [direct] ────────────────────────────────────');
    log('(Requires current block >= endBlock + 2)');
    await sendTxDirect(contract, 'drawWinner', [], wallet, provider, 'drawWinner()');

    log('');
    log('Waiting 10s for confirmation…');
    await sleep(10_000);

    // Verify winner
    const infoAfter = await viewContract.getRoundInfo();
    const winner = infoAfter?.properties?.winner;
    log(`✓ Winner drawn: ${winner?.toString?.() ?? winner}`);
    log('  Run 0-check-state.mjs to confirm. Winner must call 4-claim-prize.mjs.');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
