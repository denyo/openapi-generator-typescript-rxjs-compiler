FROM denyo/base-react AS builder

# --------------------------------------
# Prepare the app
# --------------------------------------
WORKDIR /app

## Copy package and package-lock to avoid dependency trouble
COPY package.json ./

## Install node modules
RUN yarn install

COPY tsconfig.json rollup.config.ts package-template.json ./

## Copy new entrypoint to replace env variables upon start
COPY entrypoint.sh /.
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
