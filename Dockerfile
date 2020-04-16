FROM node:12.8.1-alpine

WORKDIR /app
COPY package.json ./

RUN yarn install

COPY tsconfig.json rollup.config.ts package-template.json ./

COPY entrypoint.sh /.
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
