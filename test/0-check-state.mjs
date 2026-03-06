/**
 * VibeRaffle — Step 0: Check current round state (read-only).
 *
 * Usage (PowerShell):
 *   $env:CONTRACT_ADDR="0x..."
 *   node test/0-check-state.mjs
 *
 * No wallet/mnemonic needed — view call only.
 */

import { Address } from '@btc-vision/transaction';
import { JSONRpcProvider } from 'opnet';
import { ABI, NETWORK, RPC_URL, requireContractAddr, buildContract, log } from './config.mjs';

async function main() {
    const addr = requireContractAddr();
    const provider = new JSONRpcProvider({ url: RPC_URL, network: NETWORK });
    const contract = buildContract(addr, Address.dead(), provider);

    log(`Contract: ${addr}`);
    log(`Network:  ${process.env.NETWORK ?? 'testnet'}`);
    log('');

    log('── getRoundInfo() ───────────────────────────────────────────');
    const result = await contract.getRoundInfo();

    if (result?.revert) {
        console.error(`[REVERT] ${result.revert}`);
        process.exit(1);
    }

    const p = result?.properties ?? {};
    const SAT = 1_000n;      // display helper: sats → comma-separated
    const fmt = v => v?.toLocaleString() ?? '?';

    console.log('');
    console.log('  ticketPrice  :', fmt(p.ticketPrice), 'sats');
    console.log('  endBlock     :', fmt(p.endBlock));
    console.log('  totalTickets :', fmt(p.totalTickets));
    console.log('  prizePool    :', fmt(p.prizePool), 'sats');
    console.log('  isDrawn      :', p.isDrawn);
    console.log('  prizeClaimed :', p.prizeClaimed);
    console.log('  feeClaimed   :', p.feeClaimed);
    console.log('  winner       :', p.winner?.toString?.() ?? p.winner ?? '(none)');
    console.log('  feePercent   :', fmt(p.feePercent), '%');
    console.log('  owner        :', p.owner?.toString?.() ?? p.owner ?? '(none)');
    console.log('');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
