# syntax=docker/dockerfile:1

ARG VERSION
FROM docker.io/library/alpine:${VERSION}
USER root
RUN \
    apk add --no-cache \
        bash \
        envstub \
        curl \
    && rm -rf /tmp/*
COPY . /
USER nobody:nogroup
ENTRYPOINT ["/usr/bin/bash"]