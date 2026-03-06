/**
 * VibeRaffle — Step 5: Withdraw owner fee (owner only).
 *
 * Callable only after the winner has claimed their prize.
 * Emits FeeWithdrawn(owner, feeAmount).
 * The payout-bot.mjs listens for this and issues the actual BTC transfer.
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:ACCOUNT_INDEX="1"
 *   $env:CONTRACT_ADDR="0x..."
 *   node test/5-withdraw-fee.mjs
 */

import { Address } from '@btc-vision/transaction';
import {
    buildWallet, requireContractAddr, buildContract, sendTxDirect, log,
} from './config.mjs';

async function main() {
    const addr = requireContractAddr();
    const { wallet, provider, ownerAddr } = buildWallet();

    // Check state
    const viewContract = buildContract(addr, Address.dead(), provider);
    log('Checking round state…');
    const info = await viewContract.getRoundInfo();
    if (info?.revert) { console.error(`[REVERT] ${info.revert}`); process.exit(1); }

    const p = info?.properties ?? {};
    log(`isDrawn      : ${p.isDrawn}`);
    log(`prizeClaimed : ${p.prizeClaimed}`);
    log(`feeClaimed   : ${p.feeClaimed}`);
    log(`prizePool    : ${p.prizePool} sats`);
    log(`feePercent   : ${p.feePercent}%`);
    log('');

    if (!p.isDrawn)      { console.error('[ERROR] Round not drawn yet.'); process.exit(1); }
    if (!p.prizeClaimed) { console.error('[ERROR] Winner has not claimed yet. Run 4-claim-prize.mjs first.'); process.exit(1); }
    if (p.feeClaimed)    { log('Fee already withdrawn!'); process.exit(0); }

    const feeAmt = p.prizePool * p.feePercent / 100n;
    log(`Expected fee: ${feeAmt} sats (${p.feePercent}%)`);
    log('');

    const contract = buildContract(addr, ownerAddr, provider);

    // Simulation OOMs on testnet — use sendTxDirect to bypass.
    log('── withdrawFee() [direct] ───────────────────────────────────');
    await sendTxDirect(contract, 'withdrawFee', [], wallet, provider, 'withdrawFee()');

    log('');
    log('✓ FeeWithdrawn event emitted!');
    log(`  Fee amount: ${feeAmt} sats`);
    log('  The payout-bot.mjs will pick up this event and issue the BTC transfer.');
    log('  Round complete. Call 1-create-round.mjs to start a new round!');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
