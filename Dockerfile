FROM kartoza/mapproxy:latest

# Dove MapProxy cerca i file di configurazione in single-app mode
ENV MAPPROXY_DATA_DIR=/mapproxy

# (opzionale, ma utile per debug)
ENV MAPPROXY_LOG_LEVEL=INFO

# Copia la tua configurazione principale
COPY mapproxy.yaml /mapproxy/mapproxy.yaml
