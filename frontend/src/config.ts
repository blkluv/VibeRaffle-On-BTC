/**
 * Frontend configuration
 */

// 'testnet' | 'regtest' | 'mainnet'
export const NETWORK_NAME: 'testnet' | 'regtest' | 'mainnet' =
  (import.meta.env.VITE_NETWORK as 'testnet' | 'regtest' | 'mainnet') || 'testnet';

export const RPC_URLS: Record<string, string> = {
  testnet: 'https://testnet.opnet.org',
  regtest: 'http://localhost:9001',
  mainnet: 'https://api.opnet.org',
};

export const RPC_URL = RPC_URLS[NETWORK_NAME];

// Contract address — from .env or fallback
export const CONTRACT_ADDR = import.meta.env.VITE_CONTRACT_ADDR ?? 'opt1sqpkxsr0qjc5rkr52tgcvw9jvcuyfckvscqcg6s5p';

// Owner P2TR address — the deployer's Bitcoin Taproot address.
// Used for admin panel visibility (the ML-DSA address stored in the contract
// differs from the P2TR address returned by requestAccounts()).
export const OWNER_P2TR = (import.meta.env.VITE_OWNER_P2TR as string) ?? '';

/** Format sats as human-readable string */
export function formatSats(sats: bigint): string {
  if (sats === 0n) return '0';
  return Number(sats).toLocaleString();
}

/** Format sats to BTC */
export function satsToBtc(sats: bigint): string {
  if (sats === 0n) return '0 BTC';
  const btc = Number(sats) / 100_000_000;
  return `${btc.toFixed(6)} BTC (${Number(sats).toLocaleString()} sats)`;
}

/** Shorten an address for display */
export function shortAddr(addr: string): string {
  if (!addr || addr.length < 16) return addr;
  return `${addr.slice(0, 10)}...${addr.slice(-6)}`;
}
