FROM ghcr.io/basepkg/alpine

WORKDIR /app

# ENV APK_MIRROR=mirrors.ustc.edu.cn
# ENV NPM_REGISTRY=https://registry.npmmirror.com

RUN set -eux; \
    if [ -n "${APK_MIRROR}" ]; then \
        sed -i "s/dl-cdn.alpinelinux.org/$APK_MIRROR/g" /etc/apk/repositories; \
    fi; \
    apk add --no-cache bash nodejs npm; \
    if [ -n "${NPM_REGISTRY}" ]; then \
        npm config set registry "$NPM_REGISTRY"; \
    fi; \
    mkdir -p /npm-cache; \
    chmod 777 /npm-cache;
RUN npm install -g @anthropic-ai/claude-code

VOLUME /npm-cache
ENV npm_config_cache=/npm-cache
ENV SHELL=/bin/bash

ADD run.sh /
ENTRYPOINT ["/run.sh"]
CMD ["claude"]