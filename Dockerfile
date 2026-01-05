FROM ghcr.io/basepkg/alpine

WORKDIR /app

RUN set -eux; \
    apk add --no-cache bash curl wget git nodejs npm uv python3; \
    mkdir -p /root/npm-cache; \
    chmod 777 /root/npm-cache;
RUN npm install -g @anthropic-ai/claude-code
RUN npm install -g @fission-ai/openspec@latest
RUN npm install -g happy-coder
RUN uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

VOLUME /root
ENV npm_config_cache=/root/npm-cache
ENV SHELL=/bin/bash
ENV PATH=/root/.local/bin:$PATH

ADD run.sh /
ENTRYPOINT ["/run.sh"]
CMD ["claude"]
