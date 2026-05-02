# syntax=docker/dockerfile:1

FROM ghcr.io/coleam00/archon:${VERSION}
ARG VERSION

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ripgrep \
    fd-find \
    jq \
    && rm -rf /var/lib/apt/lists/*

RUN gh extension install github/gh-copilot
RUN npm install -g tsx prettier @openai/codex

USER appuser
ENTRYPOINT ["docker-entrypoint.sh"]
