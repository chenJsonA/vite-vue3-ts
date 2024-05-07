FROM node:18-alpine
WORKDIR /vite-vue3-ts

COPY public/ /vite-vue3-ts/public
COPY src/ /vite-vue3-ts/src 
COPY tsconfig.json /vite-vue3-ts
COPY vite.config.ts /vite-vue3-ts
COPY package.json /vite-vue3-ts
COPY index.html /vite-vue3-ts
COPY tsconfig.node.json /vite-vue3-ts/
RUN run npm rm -r node_modules
RUN run npm cache clean --force
RUN npm install
CMD ["npm", "run", "dev"]

