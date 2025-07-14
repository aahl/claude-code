FROM ghcr.io/basepkg/alpine

WORKDIR /app

RUN set -eux; \
    apk add --no-cache bash nodejs npm; \
    mkdir -p /npm-cache; \
    chmod 777 /npm-cache;
RUN npm install -g @anthropic-ai/claude-code

VOLUME /npm-cache
ENV npm_config_cache=/npm-cache
ENV SHELL=/bin/bash

ADD run.sh /
ENTRYPOINT ["/run.sh"]
CMD ["claude"]