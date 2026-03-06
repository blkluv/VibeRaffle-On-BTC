import { useState } from 'react';
import confetti from 'canvas-confetti';
import type { RoundInfo } from '../useRaffle';

interface Props {
  round: RoundInfo;
  account: string | null;
  busy: boolean;
  onBuy: (count: number, price: bigint) => Promise<unknown>;
  onConnect: () => void;
}

export default function BuyTickets({ round, account, busy, onBuy, onConnect }: Props) {
  const [count, setCount] = useState(1);
  const [buying, setBuying] = useState(false);

  const price = round.ticketPrice;
  const total = price * BigInt(count);
  const totalSats = Number(total);

  const handleBuy = async () => {
    if (!account) { onConnect(); return; }
    setBuying(true);
    try {
      await onBuy(count, price);
      confetti({
        particleCount: 100,
        spread: 70,
        origin: { y: 0.6 },
        colors: ['#7c3aed', '#00ff9d', '#ff00aa', '#F7931A'],
      });
    } catch (e: any) {
      alert(e?.message ?? String(e));
    } finally {
      setBuying(false);
    }
  };

  if (round.isDrawn || price === 0n) return null;

  return (
    <section className="w-full max-w-md mx-auto px-4 animate-slide-up" style={{ animationDelay: '0.2s' }}>
      <div className="glass-strong p-6 sm:p-8 neon-border">
        <h3 className="text-2xl font-extrabold text-center text-white mb-6">
          Buy Tickets
        </h3>

        {/* Counter */}
        <div className="flex items-center justify-center gap-4 mb-6">
          <button
            onClick={() => setCount(c => Math.max(1, c - 1))}
            className="w-12 h-12 rounded-xl bg-surface-200 border border-white/10 text-white text-xl font-bold hover:bg-surface-300 hover:border-neon-violet/30 transition-all"
          >
            -
          </button>
          <div className="text-center min-w-[80px]">
            <span className="text-4xl font-extrabold text-white tabular-nums">{count}</span>
            <p className="text-xs text-gray-500">ticket{count !== 1 ? 's' : ''}</p>
          </div>
          <button
            onClick={() => setCount(c => c + 1)}
            className="w-12 h-12 rounded-xl bg-surface-200 border border-white/10 text-white text-xl font-bold hover:bg-surface-300 hover:border-neon-violet/30 transition-all"
          >
            +
          </button>
        </div>

        {/* Price breakdown */}
        <div className="glass p-4 mb-6 text-center">
          <p className="text-sm text-gray-400">
            {count} x {Number(price).toLocaleString()} sats
          </p>
          <p className="text-3xl font-extrabold text-neon-green green-text mt-1">
            {totalSats.toLocaleString()} sats
          </p>
          <p className="text-xs text-gray-600 mt-1">
            ~{(totalSats / 100_000_000).toFixed(6)} BTC
          </p>
        </div>

        {/* Buy button */}
        <button
          onClick={handleBuy}
          disabled={busy || buying}
          className="w-full py-4 rounded-xl font-extrabold text-lg transition-all duration-300 relative overflow-hidden
            bg-gradient-to-r from-neon-green/90 to-emerald-500 text-black
            hover:from-neon-green hover:to-emerald-400 hover:shadow-glow-green hover:scale-[1.02]
            disabled:opacity-40 disabled:cursor-not-allowed disabled:hover:scale-100"
        >
          {buying ? (
            <span className="flex items-center justify-center gap-2">
              <span className="w-5 h-5 border-2 border-black border-t-transparent rounded-full animate-spin" />
              Processing...
            </span>
          ) : account ? (
            `Buy ${count} Ticket${count !== 1 ? 's' : ''} Now`
          ) : (
            'Connect Wallet to Buy'
          )}
        </button>
      </div>
    </section>
  );
}
