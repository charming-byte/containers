# syntax=docker/dockerfile:1

ARG VERSION
FROM docker.io/library/alpine:${VERSION}
USER root
RUN \
    apk add --no-cache \
        bash \
        envsubst \
        curl \
    && rm -rf /tmp/*
USER nobody:nogroup
ENTRYPOINT ["/usr/bin/bash"]