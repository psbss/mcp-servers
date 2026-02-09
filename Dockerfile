FROM node:20-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/

RUN apt-get update \
    && apt-get install -y --no-install-recommends python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package.json ./
RUN npm install

RUN chown -R node:node /app
USER node

ENV UV_PROJECT_ENVIRONMENT=/app/.venv

ENTRYPOINT ["/bin/sh", "-c"]
