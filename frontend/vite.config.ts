import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [react()],
    define: {
        // BigInt support in JSON serialization
        global: 'globalThis',
    },
});
