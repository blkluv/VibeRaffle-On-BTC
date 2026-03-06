/**
 * VibeRaffle — Shared config & helpers for all test scripts.
 *
 * Environment variables:
 *   OWNER_MNEMONIC   — 12/24-word BIP-39 mnemonic (required)
 *   ACCOUNT_INDEX    — derivation account index (default: 1)
 *   NETWORK          — "testnet" | "regtest" (default: testnet)
 *   RPC_URL          — override RPC endpoint
 *   CONTRACT_ADDR    — deployed VibeRaffle OPNet address (0x...)
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:CONTRACT_ADDR="0xabc123..."
 *   node test/0-check-state.mjs
 */

import { getContract, JSONRpcProvider, CallResult } from 'opnet';
import { Address, AddressTypes, MLDSASecurityLevel, Mnemonic } from '@btc-vision/transaction';
import { networks } from '@btc-vision/bitcoin';
import { createRequire } from 'module';

const require = createRequire(import.meta.url);

// ─── Network ──────────────────────────────────────────────────────────────────
export const NETWORK = process.env.NETWORK === 'regtest'
    ? networks.regtest
    : networks.opnetTestnet;

export const RPC_URL = process.env.RPC_URL
    ?? (process.env.NETWORK === 'regtest' ? 'http://localhost:9001' : 'https://testnet.opnet.org');

// ─── Contract address ─────────────────────────────────────────────────────────
// Testnet deployment v2 (txId-based randomness): opt1sqzjqc8ehkw25mwd9n375pmvx2uxpr55ssv95d95k
export const CONTRACT_ADDR = process.env.CONTRACT_ADDR
    ?? 'opt1sqpkxsr0qjc5rkr52tgcvw9jvcuyfckvscqcg6s5p';

// ─── ABI ─────────────────────────────────────────────────────────────────────
const ABI_JSON = require('../abis/VibeRaffle.abi.json');

/**
 * Normalize ABI function types only:
 *   "Function" → "function", "view" → "function"  (SDK BitcoinAbiTypes only has "function"|"event")
 * Parameter types (UINT256, BOOL, ADDRESS…) stay UPPERCASE — that's what ABIDataTypes uses.
 */
const normFnType = t => {
    const l = t.toLowerCase();
    return (l === 'function' || l === 'view') ? 'function' : l;
};
export const ABI = ABI_JSON.functions.map(f => ({ ...f, type: normFnType(f.type) }));

// ─── Wallet ───────────────────────────────────────────────────────────────────
/**
 * Derive an OPNet wallet from env vars.
 * @returns { wallet, provider, ownerAddr }
 */
export function buildWallet() {
    const phrase = process.env.OWNER_MNEMONIC ?? '';
    if (!phrase) {
        console.error('[ERROR] Set $env:OWNER_MNEMONIC before running this script.');
        process.exit(1);
    }
    const accountIndex = parseInt(process.env.ACCOUNT_INDEX ?? '0', 10);
    const mnemonic = new Mnemonic(phrase, '', NETWORK, MLDSASecurityLevel.LEVEL2);
    const wallet   = mnemonic.deriveOPWallet(AddressTypes.P2TR, accountIndex);
    const provider = new JSONRpcProvider({ url: RPC_URL, network: NETWORK });
    return { wallet, provider, ownerAddr: wallet.address };
}

/** Require CONTRACT_ADDR env var — exit if missing. */
export function requireContractAddr() {
    if (!CONTRACT_ADDR) {
        console.error('[ERROR] Set $env:CONTRACT_ADDR to the deployed VibeRaffle address (0x...).');
        process.exit(1);
    }
    return CONTRACT_ADDR;
}

/**
 * Build a type-safe contract proxy with a given sender.
 * Pass Address.dead() for read-only (view) calls.
 */
export function buildContract(addr, senderAddr, provider) {
    return getContract(
        addr,   // pass as plain string — SDK accepts bech32m/p2op strings directly
        ABI,
        provider,
        NETWORK,
        senderAddr,
    );
}

// ─── Transaction helpers ──────────────────────────────────────────────────────
function log(msg) {
    console.log(`[${new Date().toISOString().slice(11, 19)}] ${msg}`);
}
export { log };

export function sleep(ms) {
    return new Promise(r => setTimeout(r, ms));
}

/**
 * Standard send: simulate → broadcast.
 * @param {CallResult} simulation
 * @param {object} wallet
 * @param {string} label
 * @param {bigint} [satoshis=0n]  Extra BTC to attach (for @payable methods)
 */
export async function sendTx(simulation, wallet, label, satoshis = 0n) {
    log(`→ sending ${label}…`);
    const params = {
        signer:                   wallet.keypair,
        mldsaSigner:              wallet.mldsaKeypair,
        refundTo:                 wallet.p2tr,
        maximumAllowedSatToSpend: 200_000n + satoshis,
        feeRate:                  10,
        network:                  NETWORK,
    };
    const receipt = satoshis > 0n
        ? await simulation.sendTransaction(params, satoshis)
        : await simulation.sendTransaction(params);
    const txId = receipt?.transactionId ?? '(pending/confirmed)';
    log(`✓ ${label} — ${txId}`);
    return receipt;
}

/**
 * Direct send (bypass simulation) — use for methods that cause OOM in simulation
 * (e.g., methods triggering cross-contract calls on OPNet testnet).
 */
export async function sendTxDirect(contract, functionName, args, wallet, provider, label, satoshis = 0n) {
    log(`[direct] encoding ${label}…`);
    const calldata = contract.encodeCalldata(functionName, args);

    // setTo() requires an Address object (has .toHex()); contract.address is a
    // plain bech32m string when getContract() is called with a string.
    // Resolve via RPC — same method the SDK uses internally for simulation.
    const addrStr = typeof contract.address === 'string'
        ? contract.address
        : contract.address?.toString?.();
    const resolvedAddress = await provider.getPublicKeyInfo(addrStr, true);
    if (!resolvedAddress) {
        throw new Error(`[sendTxDirect] Could not resolve Address for ${addrStr}`);
    }

    const fakeResult = new CallResult(
        {
            result:       new Uint8Array(1),
            accessList:   {},
            events:       {},
            revert:       undefined,
            estimatedGas: '50000',
            specialGas:   '0',
        },
        provider,
    );
    fakeResult.setCalldata(calldata);
    fakeResult.setTo(contract.p2op, resolvedAddress);
    fakeResult.setGasEstimation(50_000n, 0n);

    const params = {
        signer:                   wallet.keypair,
        mldsaSigner:              wallet.mldsaKeypair,
        refundTo:                 wallet.p2tr,
        maximumAllowedSatToSpend: 100_000n + satoshis,
        minGas:                   50_000n,
        feeRate:                  10,
        network:                  NETWORK,
    };
    log(`→ sending ${label}…`);
    const receipt = satoshis > 0n
        ? await fakeResult.sendTransaction(params, satoshis)
        : await fakeResult.sendTransaction(params);
    const txId = receipt?.transactionId ?? '(pending/confirmed)';
    log(`✓ ${label} — ${txId}`);
    return receipt;
}
