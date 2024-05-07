FROM node:18-alpine
WORKDIR /vite-vue3-ts

COPY public/ /vite-vue3-ts/public
COPY src/ /vite-vue3-ts/src 
COPY tsconfig.json /vite-vue3-ts
COPY vite.config.ts /vite-vue3-ts
COPY package.json /vite-vue3-ts
COPY index.html /vite-vue3-ts
COPY tsconfig.node.json /vite-vue3-ts/
RUN if [ -d "node_modules" ]; then \
echo "node_modules exists, performing some action..." && \
rm -r node_modules \
else \
echo "node_modules does not exist, skipping action..." \
; fi
RUN npm cache clean --force
RUN npm install
CMD ["npm", "run", "dev"]

