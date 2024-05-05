FROM node:18-alpine
WORKDIR /vite-vue3-ts

COPY public/ /vite-vue3-ts/public
COPY src/ /vite-vue3-ts/src 
COPY tsconfig.json /vite-vue3-ts
COPY vite.config.ts /vite-vue3-ts
COPY package-lock.json /vite-vue3-ts
COPY package.json /vite-vue3-ts
COPY index.html /vite-vue3-ts
RUN npm install
CMD ["npm", "run", "dev"]

