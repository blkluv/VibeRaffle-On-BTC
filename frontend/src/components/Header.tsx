import { shortAddr } from '../config';

interface Props {
  account: string | null;
  onConnect: () => void;
  loading: boolean;
}

export default function Header({ account, onConnect, loading }: Props) {
  return (
    <header className="w-full max-w-6xl mx-auto flex items-center justify-between px-4 py-4 sm:px-6">
      {/* Logo */}
      <div className="flex items-center gap-3">
        <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-neon-violet to-neon-pink flex items-center justify-center text-xl shadow-glow-violet">
          V
        </div>
        <div>
          <h1 className="text-xl font-extrabold tracking-tight text-white">
            Vibe<span className="text-neon-violet">Raffle</span>
          </h1>
          <p className="text-[10px] text-gray-500 uppercase tracking-widest">Bitcoin L1 Lottery</p>
        </div>
      </div>

      {/* Network + Wallet */}
      <div className="flex items-center gap-3">
        <span className="hidden sm:flex items-center gap-1.5 px-3 py-1 rounded-full bg-surface-200 text-xs text-gray-400 border border-white/5">
          <span className="w-2 h-2 rounded-full bg-neon-green animate-pulse" />
          OPNet Testnet
        </span>

        {account ? (
          <div className="px-4 py-2 rounded-xl bg-gradient-to-r from-neon-violet/20 to-neon-pink/20 border border-neon-violet/30 text-sm font-mono text-white">
            {shortAddr(account)}
          </div>
        ) : (
          <button
            onClick={onConnect}
            disabled={loading}
            className="btn-glow px-5 py-2.5 rounded-xl font-bold text-sm bg-gradient-to-r from-neon-violet to-purple-600 text-white shadow-glow-violet hover:shadow-glow-pink transition-all duration-300 hover:scale-105 disabled:opacity-50"
          >
            Connect Wallet
          </button>
        )}
      </div>
    </header>
  );
}
