# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ghcr.io/coleam00/Archon
FROM ghcr.io/coleam00/archon:0.3.10
ARG VERSION

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ripgrep \
    fd-find \
    jq \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g tsx prettier @openai/codex

USER appuser
ENTRYPOINT ["docker-entrypoint.sh"]
