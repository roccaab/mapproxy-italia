FROM kartoza/mapproxy:latest

# Directory di configurazione e cache
ENV MAPPROXY_DATA_DIR=/mapproxy
ENV MAPPROXY_CACHE_DIR=/mapproxy/cache_data
ENV MULTI_MAPPROXY=False

# Passiamo la NOSTRA config allo startup script:
# /scripts/start.sh la copierà in /mapproxy/mapproxy.yaml
COPY mapproxy.yaml /settings/mapproxy.yaml

