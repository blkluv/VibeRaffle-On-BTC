import { useState, useEffect } from 'react';
import type { RoundInfo } from '../useRaffle';

interface Props {
  round: RoundInfo | null;
  currentBlock: bigint;
}

function useCountdown(endBlock: bigint, currentBlock: bigint) {
  const [now, setNow] = useState(Date.now());

  useEffect(() => {
    const t = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(t);
  }, []);

  if (endBlock === 0n || currentBlock === 0n) return { days: 0, hours: 0, minutes: 0, seconds: 0, ended: true };

  const blocksLeft = endBlock > currentBlock ? Number(endBlock - currentBlock) : 0;
  if (blocksLeft === 0) return { days: 0, hours: 0, minutes: 0, seconds: 0, ended: true };

  // ~5 min per block on OPNet testnet
  const secondsLeft = blocksLeft * 300;
  const days = Math.floor(secondsLeft / 86400);
  const hours = Math.floor((secondsLeft % 86400) / 3600);
  const minutes = Math.floor((secondsLeft % 3600) / 60);
  const seconds = Math.floor(secondsLeft % 60);

  // suppress unused var warning
  void now;

  return { days, hours, minutes, seconds, ended: false };
}

function TimerBox({ value, label }: { value: number; label: string }) {
  return (
    <div className="glass-strong p-3 sm:p-4 text-center min-w-[70px] neon-border">
      <div className="text-2xl sm:text-4xl font-extrabold text-neon-violet neon-text tabular-nums">
        {String(value).padStart(2, '0')}
      </div>
      <div className="text-[10px] sm:text-xs text-gray-500 uppercase tracking-wider mt-1">{label}</div>
    </div>
  );
}

export default function Hero({ round, currentBlock }: Props) {
  const prizePool = round?.prizePool ?? 0n;
  const sats = Number(prizePool);
  const btc = (sats / 100_000_000).toFixed(6);
  const { days, hours, minutes, seconds, ended } = useCountdown(round?.endBlock ?? 0n, currentBlock);

  return (
    <section className="w-full max-w-4xl mx-auto text-center px-4 py-8 sm:py-16 animate-slide-up">
      {/* Prize amount */}
      <div className="mb-2">
        <p className="text-xs sm:text-sm text-gray-500 uppercase tracking-widest mb-3">Current Prize Pool</p>
        <h2 className="text-5xl sm:text-7xl font-black text-white green-text animate-float">
          {sats > 0 ? sats.toLocaleString() : '0'}
        </h2>
        <p className="text-lg sm:text-xl text-neon-green/70 font-medium mt-1">
          sats {sats > 0 && <span className="text-gray-500">({btc} BTC)</span>}
        </p>
      </div>

      {/* Countdown */}
      {round && !round.isDrawn && !ended && (
        <div className="mt-8">
          <p className="text-xs text-gray-500 uppercase tracking-widest mb-3">Round Ends In</p>
          <div className="flex justify-center gap-2 sm:gap-4">
            <TimerBox value={days} label="Days" />
            <TimerBox value={hours} label="Hours" />
            <TimerBox value={minutes} label="Mins" />
            <TimerBox value={seconds} label="Secs" />
          </div>
          <p className="text-xs text-gray-600 mt-3">
            Block {currentBlock.toLocaleString()} / {round.endBlock.toLocaleString()}
          </p>
        </div>
      )}

      {/* Round ended / drawn states */}
      {round && !round.isDrawn && ended && round.totalTickets > 0n && (
        <div className="mt-8 glass-strong p-6 neon-border inline-block">
          <p className="text-neon-pink font-bold text-lg animate-pulse-slow">Round Ended - Ready to Draw!</p>
          <p className="text-xs text-gray-500 mt-1">Anyone can trigger the draw after block {(round.endBlock + 2n).toLocaleString()}</p>
        </div>
      )}

      {round?.isDrawn && (
        <div className="mt-8 glass-strong p-6 border border-neon-green/30 inline-block">
          <p className="text-neon-green font-bold text-lg">Winner Selected!</p>
          <p className="text-xs text-gray-400 mt-2 font-mono break-all max-w-md mx-auto">{round.winner}</p>
          {!round.prizeClaimed && (
            <p className="text-xs text-neon-pink mt-2 animate-pulse-slow">Prize awaiting claim...</p>
          )}
          {round.prizeClaimed && !round.feeClaimed && (
            <p className="text-xs text-neon-green/60 mt-2">Prize claimed ✓</p>
          )}
          {round.prizeClaimed && round.feeClaimed && (
            <p className="text-xs text-gray-500 mt-2">Round complete ✓</p>
          )}
        </div>
      )}
    </section>
  );
}
