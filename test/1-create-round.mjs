/**
 * VibeRaffle — Step 1: Create a new raffle round (owner only).
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:ACCOUNT_INDEX="1"
 *   $env:CONTRACT_ADDR="opt1sq..."
 *   $env:TICKET_PRICE="10000"         # sats per ticket (default: 10 000)
 *   $env:DURATION_BLOCKS="144"        # ~1 day on Bitcoin (default: 144)
 *   node test/1-create-round.mjs
 */

import { buildWallet, requireContractAddr, buildContract, sendTxDirect, log } from './config.mjs';

const TICKET_PRICE    = BigInt(process.env.TICKET_PRICE     ?? '10000');  // sats
const DURATION_BLOCKS = BigInt(process.env.DURATION_BLOCKS  ?? '144');    // blocks

async function main() {
    const addr = requireContractAddr();
    const { wallet, provider, ownerAddr } = buildWallet();
    const contract = buildContract(addr, ownerAddr, provider);

    log(`Owner:        ${wallet.p2tr}`);
    log(`Contract:     ${addr}`);
    log(`ticketPrice:  ${TICKET_PRICE} sats`);
    log(`duration:     ${DURATION_BLOCKS} blocks (~${Number(DURATION_BLOCKS) / 144} days)`);
    log('');

    // Simulation OOMs on testnet — use sendTxDirect to bypass.
    log('── createRound(ticketPrice, durationBlocks) [direct] ──────');
    await sendTxDirect(
        contract,
        'createRound',
        [TICKET_PRICE, DURATION_BLOCKS],
        wallet,
        provider,
        `createRound(${TICKET_PRICE}, ${DURATION_BLOCKS})`,
    );

    log('');
    log('✓ Round created! Run 0-check-state.mjs to verify.');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
