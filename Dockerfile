FROM ghcr.io/basepkg/alpine

WORKDIR /app

RUN set -eux; \
    apk add --no-cache bash curl git nodejs npm uv; \
    mkdir -p /root/npm-cache; \
    chmod 777 /root/npm-cache;
RUN npm install -g @anthropic-ai/claude-code

VOLUME /root
ENV npm_config_cache=/root/npm-cache
ENV SHELL=/bin/bash

ADD run.sh /
ENTRYPOINT ["/run.sh"]
CMD ["claude"]
