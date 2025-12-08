FROM kartoza/mapproxy:latest

# Dove MapProxy trova config e cache
ENV MAPPROXY_DATA_DIR=/mapproxy
ENV MAPPROXY_CACHE_DIR=/cache_data
ENV MULTI_MAPPROXY=False

# Passiamo la NOSTRA config allo startup script
# start.sh la copierà in ${MAPPROXY_DATA_DIR}/mapproxy.yaml
COPY mapproxy.yaml /settings/mapproxy.yaml

