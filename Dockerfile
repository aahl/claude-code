FROM ghcr.io/basepkg/alpine

WORKDIR /app
ENV BUN_INSTALL=/usr/local

RUN set -eux; \
    apk add --no-cache libgcc libstdc++ ripgrep; \
    apk add --no-cache bash curl wget git nodejs npm uv python3 openssh jq; \
    mkdir -p /root/npm-cache; \
    chmod 777 /root/npm-cache;
RUN curl -fsSL https://bun.sh/install | bash
RUN npm install -g @anthropic-ai/claude-code
RUN npm install -g happy
RUN npm install -g @fission-ai/openspec@latest
RUN uv tool install specify-cli --from git+https://github.com/github/spec-kit.git

VOLUME /root
ENV npm_config_cache=/root/npm-cache
ENV SHELL=/bin/bash
ENV PATH=/root/.local/bin:$PATH
ENV USE_BUILTIN_RIPGREP=0

ADD run.sh /
ENTRYPOINT ["/run.sh"]
CMD ["claude"]
