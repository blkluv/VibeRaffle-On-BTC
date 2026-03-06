import { useState } from 'react';
import type { RoundInfo } from '../useRaffle';
import { OWNER_P2TR } from '../config';

interface Props {
  round: RoundInfo;
  account: string | null;
  busy: boolean;
  onDraw: () => Promise<unknown>;
  onClaim: () => Promise<unknown>;
  onWithdrawFee: () => Promise<unknown>;
  onCreateRound: (price: bigint, duration: bigint) => Promise<unknown>;
}

function ActionButton({
  label,
  onClick,
  disabled,
  variant = 'violet',
}: {
  label: string;
  onClick: () => void;
  disabled: boolean;
  variant?: 'violet' | 'pink' | 'green';
}) {
  const [pending, setPending] = useState(false);

  const colors = {
    violet: 'from-neon-violet to-purple-600 hover:shadow-glow-violet text-white',
    pink:   'from-neon-pink to-rose-600 hover:shadow-glow-pink text-white',
    green:  'from-neon-green/90 to-emerald-500 hover:shadow-glow-green text-black',
  };

  const handleClick = async () => {
    setPending(true);
    try { await onClick(); }
    catch (e: any) { alert(e?.message ?? String(e)); }
    finally { setPending(false); }
  };

  return (
    <button
      onClick={handleClick}
      disabled={disabled || pending}
      className={`w-full py-3 rounded-xl font-bold text-sm transition-all duration-300 hover:scale-[1.02]
        bg-gradient-to-r ${colors[variant]}
        disabled:opacity-30 disabled:cursor-not-allowed disabled:hover:scale-100`}
    >
      {pending ? (
        <span className="flex items-center justify-center gap-2">
          <span className="w-4 h-4 border-2 border-current border-t-transparent rounded-full animate-spin" />
          Sending...
        </span>
      ) : label}
    </button>
  );
}

export default function Actions({ round, account, busy, onDraw, onClaim, onWithdrawFee, onCreateRound }: Props) {
  const [price, setPrice]       = useState('10000');
  const [duration, setDuration] = useState('144');

  // Compare against the deployer's P2TR address (returned by requestAccounts()).
  // The contract stores the ML-DSA/P2OP address which differs from P2TR,
  // so we compare against the known P2TR from VITE_OWNER_P2TR.
  const isOwner = !!(account && OWNER_P2TR &&
    OWNER_P2TR.toLowerCase() === account.toLowerCase());

  const roundEnded  = round.endBlock > 0n && round.totalTickets > 0n && !round.isDrawn;
  const canDraw     = roundEnded;
  const canClaim    = round.isDrawn && !round.prizeClaimed;
  const canWithdraw = round.prizeClaimed && !round.feeClaimed && isOwner;
  const canCreate   = isOwner;

  const hasAnyButton = canDraw || canClaim || canWithdraw || canCreate;

  // Round complete, not the admin — show hint
  if (!hasAnyButton && round.isDrawn && round.prizeClaimed && round.feeClaimed) {
    return (
      <section className="w-full max-w-md mx-auto px-4 animate-slide-up" style={{ animationDelay: '0.3s' }}>
        <div className="glass p-5 text-center border border-white/5">
          <p className="text-sm text-gray-400">Round complete. Waiting for the next round.</p>
          {account && (
            <p className="text-xs text-gray-600 mt-2">
              Connected as non-admin — only the contract owner can start a new round.
            </p>
          )}
          {!account && (
            <p className="text-xs text-gray-600 mt-2">Connect the owner wallet to start a new round.</p>
          )}
        </div>
      </section>
    );
  }

  if (!hasAnyButton) return null;

  return (
    <section className="w-full max-w-md mx-auto px-4 flex flex-col gap-4 animate-slide-up" style={{ animationDelay: '0.3s' }}>

      {/* ── Draw Winner ─────────────────────────────────────────────── */}
      {canDraw && (
        <ActionButton
          label="🎲 Draw Winner"
          onClick={onDraw}
          disabled={busy || !account}
          variant="violet"
        />
      )}

      {/* ── Claim Prize ─────────────────────────────────────────────── */}
      {canClaim && (
        <div className="glass p-5 neon-border border-neon-green/30">
          <p className="text-xs text-gray-400 text-center mb-3">
            Winner can claim their prize on-chain
          </p>
          <ActionButton
            label="🏆 Claim Prize"
            onClick={onClaim}
            disabled={busy || !account}
            variant="green"
          />
          {!account && (
            <p className="text-xs text-gray-500 text-center mt-2">Connect wallet to claim</p>
          )}
        </div>
      )}

      {/* ── Withdraw Fee (owner) ─────────────────────────────────────── */}
      {canWithdraw && (
        <ActionButton
          label="💸 Withdraw Fee (Owner)"
          onClick={onWithdrawFee}
          disabled={busy}
          variant="pink"
        />
      )}

      {/* ── Admin: Create New Round ──────────────────────────────────── */}
      {canCreate && (
        <div className="glass p-5 neon-border border-neon-violet/30">
          <h4 className="text-sm font-bold text-neon-violet mb-4 flex items-center gap-2">
            <span className="text-base">⚙️</span> Admin: Create New Round
          </h4>
          <div className="grid grid-cols-2 gap-3 mb-4">
            <div>
              <label className="text-[10px] text-gray-500 uppercase tracking-wider">
                Ticket Price (sats)
              </label>
              <input
                type="number"
                min="1"
                value={price}
                onChange={e => setPrice(e.target.value)}
                className="w-full mt-1 px-3 py-2 rounded-lg bg-surface-300 border border-white/10
                  text-white text-sm focus:outline-none focus:border-neon-violet/50"
              />
            </div>
            <div>
              <label className="text-[10px] text-gray-500 uppercase tracking-wider">
                Duration (blocks)
              </label>
              <input
                type="number"
                min="1"
                value={duration}
                onChange={e => setDuration(e.target.value)}
                className="w-full mt-1 px-3 py-2 rounded-lg bg-surface-300 border border-white/10
                  text-white text-sm focus:outline-none focus:border-neon-violet/50"
              />
            </div>
          </div>
          <ActionButton
            label="🚀 Create New Round"
            onClick={() => onCreateRound(BigInt(price), BigInt(duration))}
            disabled={busy}
            variant="violet"
          />
        </div>
      )}
    </section>
  );
}
