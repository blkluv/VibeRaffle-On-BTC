/**
 * VibeRaffle — Step 4: Claim prize (winner only).
 *
 * Only the drawn winner can call this. Emits PrizeClaimed(winner, amount).
 * The payout-bot.mjs listens for this event and issues the actual BTC transfer.
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"  # must be the WINNER's mnemonic
 *   $env:ACCOUNT_INDEX="1"
 *   $env:CONTRACT_ADDR="0x..."
 *   node test/4-claim-prize.mjs
 */

import { Address } from '@btc-vision/transaction';
import {
    buildWallet, requireContractAddr, buildContract, sendTxDirect, log,
} from './config.mjs';

async function main() {
    const addr = requireContractAddr();
    const { wallet, provider, ownerAddr } = buildWallet();

    // Verify caller is the winner
    const viewContract = buildContract(addr, Address.dead(), provider);
    log('Checking round state…');
    const info = await viewContract.getRoundInfo();
    if (info?.revert) { console.error(`[REVERT] ${info.revert}`); process.exit(1); }

    const p = info?.properties ?? {};
    log(`isDrawn      : ${p.isDrawn}`);
    log(`prizeClaimed : ${p.prizeClaimed}`);
    log(`winner       : ${p.winner?.toString?.() ?? p.winner}`);
    log(`prizePool    : ${p.prizePool} sats`);
    log(`feePercent   : ${p.feePercent}%`);
    log('');

    if (!p.isDrawn) {
        console.error('[ERROR] Winner not drawn yet. Run 3-draw-winner.mjs first.');
        process.exit(1);
    }
    if (p.prizeClaimed) {
        log('Prize already claimed!');
        process.exit(0);
    }

    const winnerStr = p.winner?.toString?.() ?? String(p.winner ?? '');
    if (!winnerStr.toLowerCase().includes(wallet.address.toString().toLowerCase().slice(0, 10))) {
        log(`[WARN] Your address: ${wallet.p2tr}`);
        log(`[WARN] Winner:       ${winnerStr}`);
        log('[WARN] You may not be the winner — the tx will revert if so.');
        log('');
    }

    const fee         = p.prizePool * p.feePercent / 100n;
    const winnerAmt   = p.prizePool - fee;
    log(`Expected payout: ${winnerAmt} sats (${100n - p.feePercent}% of pool)`);
    log('');

    const contract = buildContract(addr, ownerAddr, provider);

    // Simulation OOMs on testnet — use sendTxDirect to bypass.
    log('── claimPrize() [direct] ────────────────────────────────────');
    await sendTxDirect(contract, 'claimPrize', [], wallet, provider, 'claimPrize()');

    log('');
    log('✓ PrizeClaimed event emitted!');
    log(`  Winner amount: ${winnerAmt} sats`);
    log('  The payout-bot.mjs will pick up this event and issue the BTC transfer.');
    log('  Owner can now run 5-withdraw-fee.mjs to collect the fee.');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
