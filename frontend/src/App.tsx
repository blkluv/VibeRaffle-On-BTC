import { Toaster } from 'react-hot-toast';
import { useRaffle } from './useRaffle';
import Header from './components/Header';
import Hero from './components/Hero';
import StatsCards from './components/StatsCards';
import BuyTickets from './components/BuyTickets';
import Actions from './components/Actions';
import HowItWorks from './components/HowItWorks';
import Footer from './components/Footer';

export default function App() {
  const {
    round, account, loading, error, txPending, currentBlock, myTickets,
    refresh, connectWallet, createRound, buyTickets, drawWinner, claimPrize, withdrawFee,
  } = useRaffle();

  const busy = txPending || loading;

  return (
    <div className="min-h-screen bg-surface bg-grid relative">
      {/* Background orbs */}
      <div className="orb orb-1" />
      <div className="orb orb-2" />
      <div className="orb orb-3" />

      {/* Toast notifications */}
      <Toaster
        position="top-right"
        toastOptions={{
          style: {
            background: '#1a1a2e',
            color: '#f1f1f1',
            border: '1px solid rgba(124, 58, 237, 0.3)',
            borderRadius: '12px',
          },
        }}
      />

      {/* Content */}
      <div className="relative z-10 flex flex-col min-h-screen">
        <Header account={account} onConnect={connectWallet} loading={loading} />

        {/* Error banner */}
        {error && (
          <div className="mx-auto max-w-4xl w-full px-4 mt-2">
            <div className="px-4 py-3 rounded-xl bg-red-900/20 border border-red-500/30 text-sm text-red-400 flex items-center justify-between">
              <span>{error}</span>
              <button onClick={refresh} className="text-red-300 hover:text-white text-xs ml-4">Retry</button>
            </div>
          </div>
        )}

        <Hero round={round} currentBlock={currentBlock} />

        <StatsCards round={round} />

        {round && (
          <>
            <div className="my-6" />
            <BuyTickets
              round={round}
              account={account}
              busy={busy}
              myTickets={myTickets}
              onBuy={buyTickets}
              onConnect={connectWallet}
            />
          </>
        )}

        {round && (
          <>
            <div className="my-4" />
            <Actions
              round={round}
              account={account}
              busy={busy}
              onDraw={drawWinner}
              onClaim={claimPrize}
              onWithdrawFee={withdrawFee}
              onCreateRound={createRound}
            />
          </>
        )}

        <HowItWorks />
        <Footer />
      </div>
    </div>
  );
}
