/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
      colors: {
        bitcoin: '#F7931A',
        'neon-green': '#00ff9d',
        'neon-pink': '#ff00aa',
        'neon-violet': '#7c3aed',
        'neon-blue': '#3b82f6',
        surface: {
          DEFAULT: '#0a0a14',
          100: '#12121f',
          200: '#1a1a2e',
          300: '#252540',
        },
      },
      boxShadow: {
        'glow-violet': '0 0 20px rgba(124, 58, 237, 0.4), 0 0 60px rgba(124, 58, 237, 0.1)',
        'glow-green': '0 0 20px rgba(0, 255, 157, 0.4), 0 0 60px rgba(0, 255, 157, 0.1)',
        'glow-pink': '0 0 20px rgba(255, 0, 170, 0.4), 0 0 60px rgba(255, 0, 170, 0.1)',
        'glow-bitcoin': '0 0 20px rgba(247, 147, 26, 0.4), 0 0 60px rgba(247, 147, 26, 0.1)',
      },
      animation: {
        'pulse-slow': 'pulse 3s ease-in-out infinite',
        'float': 'float 6s ease-in-out infinite',
        'glow': 'glow 2s ease-in-out infinite alternate',
        'slide-up': 'slideUp 0.5s ease-out',
        'count-up': 'countUp 0.3s ease-out',
      },
      keyframes: {
        float: {
          '0%, 100%': { transform: 'translateY(0px)' },
          '50%': { transform: 'translateY(-10px)' },
        },
        glow: {
          '0%': { boxShadow: '0 0 5px rgba(124, 58, 237, 0.2), 0 0 20px rgba(124, 58, 237, 0.1)' },
          '100%': { boxShadow: '0 0 20px rgba(124, 58, 237, 0.6), 0 0 60px rgba(124, 58, 237, 0.2)' },
        },
        slideUp: {
          '0%': { opacity: '0', transform: 'translateY(20px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        },
        countUp: {
          '0%': { opacity: '0', transform: 'scale(0.8)' },
          '100%': { opacity: '1', transform: 'scale(1)' },
        },
      },
      backgroundImage: {
        'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
      },
    },
  },
  plugins: [],
};
