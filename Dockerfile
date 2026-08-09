ARG HOMEASSISTANT_VERSION
FROM ghcr.io/home-assistant/home-assistant:${HOMEASSISTANT_VERSION}

COPY rootfs /
