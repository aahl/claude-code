#!/bin/bash

set -eux;

if [ -n "${APK_MIRROR}" ]; then
    sed -i "s/dl-cdn.alpinelinux.org/$APK_MIRROR/g" /etc/apk/repositories
fi
if [ -n "${NPM_REGISTRY}" ]; then
    npm config set registry "$NPM_REGISTRY"
fi;

exec "$@"