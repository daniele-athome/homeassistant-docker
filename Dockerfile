ARG HOMEASSISTANT_VERSION=stable
FROM ghcr.io/home-assistant/home-assistant:${HOMEASSISTANT_VERSION}
ARG HOMEASSISTANT_VERSION

COPY rootfs /

RUN apk add --no-cache \
      libcap-setcap \
      lm-sensors \
      iputils \
      openssh-client

RUN uv pip install "pymysql>=1.0,<2.0"

RUN --mount=type=bind,source=patches/${HOMEASSISTANT_VERSION},target=/patches \
    set -eu; \
    apk add --no-cache patch; \
    for p in /patches/*.patch; do \
      echo "applying $(basename "$p")"; \
      patch -p1 -d "/usr/src/homeassistant" -N --no-backup-if-mismatch -r - < "$p"; \
    done; \
    apk del patch
