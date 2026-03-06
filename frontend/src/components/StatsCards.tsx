import type { RoundInfo } from '../useRaffle';

interface Props {
  round: RoundInfo | null;
}

function Card({ label, value, sub, accent = 'violet' }: {
  label: string;
  value: string;
  sub?: string;
  accent?: 'violet' | 'green' | 'pink' | 'blue';
}) {
  const accents = {
    violet: 'border-neon-violet/20 hover:border-neon-violet/40 hover:shadow-glow-violet',
    green: 'border-neon-green/20 hover:border-neon-green/40 hover:shadow-glow-green',
    pink: 'border-neon-pink/20 hover:border-neon-pink/40 hover:shadow-glow-pink',
    blue: 'border-neon-blue/20 hover:border-neon-blue/40',
  };
  const textColors = {
    violet: 'text-neon-violet',
    green: 'text-neon-green',
    pink: 'text-neon-pink',
    blue: 'text-neon-blue',
  };

  return (
    <div className={`glass p-5 sm:p-6 text-center transition-all duration-300 hover:scale-[1.02] ${accents[accent]}`}>
      <p className="text-xs text-gray-500 uppercase tracking-widest mb-2">{label}</p>
      <p className={`text-2xl sm:text-3xl font-extrabold ${textColors[accent]} tabular-nums`}>{value}</p>
      {sub && <p className="text-xs text-gray-600 mt-1">{sub}</p>}
    </div>
  );
}

export default function StatsCards({ round }: Props) {
  if (!round) return null;

  const price = Number(round.ticketPrice);
  const pool = Number(round.prizePool);
  const fee = Number(round.feePercent);
  const winnerPayout = pool > 0 ? Math.floor(pool * (100 - fee) / 100) : 0;

  return (
    <section className="w-full max-w-4xl mx-auto px-4 animate-slide-up" style={{ animationDelay: '0.1s' }}>
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 sm:gap-4">
        <Card
          label="Ticket Price"
          value={price > 0 ? price.toLocaleString() : '-'}
          sub="sats"
          accent="violet"
        />
        <Card
          label="Tickets Sold"
          value={round.totalTickets.toLocaleString()}
          sub={`${round.totalTickets} participant${round.totalTickets !== 1n ? 's' : ''}`}
          accent="blue"
        />
        <Card
          label="Prize Pool"
          value={pool > 0 ? pool.toLocaleString() : '0'}
          sub="sats"
          accent="green"
        />
        <Card
          label="Winner Gets"
          value={winnerPayout > 0 ? winnerPayout.toLocaleString() : '0'}
          sub={`${100 - fee}% of pool`}
          accent="pink"
        />
      </div>
    </section>
  );
}
