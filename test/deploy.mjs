/**
 * VibeRaffle — Deploy contract to OPNet testnet.
 *
 * Uses the same wallet as all other test scripts (OWNER_MNEMONIC + ACCOUNT_INDEX).
 * The deployer becomes the contract owner (@onlyOwner methods).
 *
 * Usage (PowerShell):
 *   $env:OWNER_MNEMONIC="word1 word2 ... word12"
 *   $env:ACCOUNT_INDEX="2"
 *   node test/deploy.mjs
 */

import { TransactionFactory } from '@btc-vision/transaction';
import { JSONRpcProvider } from 'opnet';
import { readFileSync } from 'fs';
import { buildWallet, NETWORK, RPC_URL, log } from './config.mjs';

const WASM_PATH = 'build/VibeRaffle.wasm';

async function main() {
    const { wallet, provider } = buildWallet();

    log(`Deployer:  ${wallet.p2tr}`);
    log(`Network:   ${NETWORK === 'testnet' ? 'testnet' : 'opnetTestnet'}`);
    log(`RPC:       ${RPC_URL}`);
    log('');

    // Read WASM bytecode
    const bytecode = readFileSync(WASM_PATH);
    log(`Bytecode:  ${WASM_PATH} (${bytecode.length} bytes)`);

    // Get UTXOs
    const utxos = await provider.utxoManager.getUTXOs({
        address: wallet.p2tr,
    });
    log(`UTXOs:     ${utxos.length} available`);
    if (utxos.length === 0) {
        console.error('[ERROR] No UTXOs available for deployment. Fund the wallet first.');
        process.exit(1);
    }

    const totalSats = utxos.reduce((sum, u) => sum + BigInt(u.value), 0n);
    log(`Balance:   ${totalSats} sats`);
    log('');

    // Get PoW challenge
    log('Getting challenge...');
    const challenge = await provider.getChallenge();
    log('Challenge received.');

    // Prepare deployment
    const factory = new TransactionFactory();
    const deploymentParams = {
        from: wallet.p2tr,
        utxos: utxos,
        signer: wallet.keypair,
        mldsaSigner: wallet.mldsaKeypair,
        network: NETWORK,
        feeRate: 10,
        priorityFee: 0n,
        gasSatFee: 10_000n,
        bytecode: bytecode,
        challenge: challenge,
        linkMLDSAPublicKeyToAddress: true,
        revealMLDSAPublicKey: true,
    };

    log('Signing deployment...');
    const deployment = await factory.signDeployment(deploymentParams);

    log(`Contract address: ${deployment.contractAddress}`);
    log('');

    // Broadcast funding TX
    log('Broadcasting funding TX...');
    const fundingResult = await provider.sendRawTransaction(deployment.transaction[0]);
    log(`Funding TX: ${fundingResult.txid ?? fundingResult}`);

    // Broadcast reveal TX
    log('Broadcasting reveal TX...');
    const revealResult = await provider.sendRawTransaction(deployment.transaction[1]);
    log(`Reveal TX:  ${revealResult.txid ?? revealResult}`);

    log('');
    log('='.repeat(60));
    log(`CONTRACT ADDRESS: ${deployment.contractAddress}`);
    log('='.repeat(60));
    log('');
    log('Update config.mjs with this address, or set:');
    log(`  $env:CONTRACT_ADDR="${deployment.contractAddress}"`);
    log('');
    log('Wait for confirmation (~5-15 min), then verify:');
    log('  node test/0-check-state.mjs');
}

main().catch(err => {
    console.error('\n[ERROR]', err?.message ?? err);
    process.exit(1);
});
