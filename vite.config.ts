import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  base:'/vite-vue3-ts/',
  build: {
    outDir: 'build'
  },
  server:{
    host: '0.0.0.0',
    port: 3000
  }
})
