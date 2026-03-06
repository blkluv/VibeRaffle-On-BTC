import { CONTRACT_ADDR, shortAddr } from '../config';

export default function Footer() {
  return (
    <footer className="w-full max-w-6xl mx-auto px-4 py-8 mt-12 border-t border-white/5">
      <div className="flex flex-col sm:flex-row items-center justify-between gap-4 text-xs text-gray-600">
        <div className="flex items-center gap-4">
          <a
            href="https://opnet.org"
            target="_blank"
            rel="noopener noreferrer"
            className="hover:text-neon-violet transition-colors"
          >
            OPNet
          </a>
          <a
            href="https://github.com"
            target="_blank"
            rel="noopener noreferrer"
            className="hover:text-neon-violet transition-colors"
          >
            GitHub
          </a>
          <a
            href="https://x.com/AiAndark"
            target="_blank"
            rel="noopener noreferrer"
            className="hover:text-neon-violet transition-colors"
          >
            Twitter
          </a>
        </div>

        <div className="text-center">
          <p>Provably fair. No custody. Events-based payouts.</p>
          {CONTRACT_ADDR && (
            <p className="text-gray-700 mt-1 font-mono">{shortAddr(CONTRACT_ADDR)}</p>
          )}
        </div>

        <p className="text-gray-700">
          Built with VibeCode on OP_NET
        </p>
      </div>
    </footer>
  );
}
