const steps = [
  {
    num: '01',
    title: 'Connect',
    desc: 'Link your OP_WALLET to the dApp. No sign-up, no KYC.',
    icon: 'M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1',
  },
  {
    num: '02',
    title: 'Buy Tickets',
    desc: 'Choose how many tickets. Pay in BTC sats. More tickets = higher chance.',
    icon: 'M15 5v2m0 4v2m0 4v2M5 5a2 2 0 00-2 2v3a2 2 0 110 4v3a2 2 0 002 2h14a2 2 0 002-2v-3a2 2 0 110-4V7a2 2 0 00-2-2H5z',
  },
  {
    num: '03',
    title: 'Wait for Draw',
    desc: 'When the round ends, anyone can trigger the provably fair draw.',
    icon: 'M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z',
  },
  {
    num: '04',
    title: 'Claim Prize',
    desc: 'Winner claims on-chain. BTC payout is issued automatically.',
    icon: 'M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z',
  },
];

export default function HowItWorks() {
  return (
    <section className="w-full max-w-4xl mx-auto px-4 py-12 sm:py-16">
      <h3 className="text-2xl sm:text-3xl font-extrabold text-center text-white mb-10">
        How It <span className="text-neon-violet">Works</span>
      </h3>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6">
        {steps.map((step) => (
          <div
            key={step.num}
            className="glass p-6 text-center hover:border-neon-violet/30 transition-all duration-300 hover:scale-[1.03] group"
          >
            <div className="w-12 h-12 mx-auto mb-4 rounded-xl bg-neon-violet/10 border border-neon-violet/20 flex items-center justify-center group-hover:bg-neon-violet/20 transition-colors">
              <svg className="w-6 h-6 text-neon-violet" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d={step.icon} />
              </svg>
            </div>
            <span className="text-[10px] text-neon-violet/50 font-bold tracking-widest">{step.num}</span>
            <h4 className="text-lg font-bold text-white mt-1 mb-2">{step.title}</h4>
            <p className="text-xs text-gray-500 leading-relaxed">{step.desc}</p>
          </div>
        ))}
      </div>
    </section>
  );
}
