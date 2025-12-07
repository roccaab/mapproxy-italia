FROM mapproxy/mapproxy:latest

# Crea directory per cache e log
RUN mkdir -p /mapproxy/cache_data /mapproxy/logs

# Copia configurazione
COPY mapproxy.yaml /mapproxy/
COPY seed.yaml /mapproxy/

# Imposta permessi
RUN chown -R mapproxy:mapproxy /mapproxy

USER mapproxy

EXPOSE 8080

