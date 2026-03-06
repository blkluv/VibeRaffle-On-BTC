import { Blockchain } from '@btc-vision/btc-runtime/runtime';
import { VibeRaffle } from './contracts/VibeRaffle';
import { revertOnError } from '@btc-vision/btc-runtime/runtime/abort/abort';

// Factory function — MUST return a new instance, not assign directly.
Blockchain.contract = (): VibeRaffle => {
    return new VibeRaffle();
};

// Required runtime exports
export * from '@btc-vision/btc-runtime/runtime/exports';

// Default export for bundler / plugin tooling convenience
export { VibeRaffle as default } from './contracts/VibeRaffle';

// Required abort handler — routes AssemblyScript panics to OPNet revert
export function abort(
    message: string,
    fileName: string,
    line: u32,
    column: u32,
): void {
    revertOnError(message, fileName, line, column);
}
