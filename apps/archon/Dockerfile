# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ghcr.io/coleam00/Archon
FROM ghcr.io/coleam00/archon:0.3.10
ARG VERSION

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ripgrep \
    npm \
    fd-find \
    jq \
    && npm install npm@latest -g \
    && npm install n @openai/codex mariozechner/pi-coding-agent prettier -g \
    && rm -rf /var/lib/apt/lists/*

USER appuser
ENTRYPOINT ["docker-entrypoint.sh"]
