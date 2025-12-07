# Usa un tag specifico invece di 'latest'
FROM mapproxy/mapproxy:1.15.0

# Crea directory per cache e log
RUN mkdir -p /mapproxy/cache_data /mapproxy/logs

# Installa dipendenze aggiuntive se necessario
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copia configurazione
COPY mapproxy.yaml /mapproxy/
# Se hai file seed.yaml, scommenta la riga sotto
# COPY seed.yaml /mapproxy/

# Imposta permessi
RUN chown -R mapproxy:mapproxy /mapproxy

USER mapproxy

EXPOSE 8080

# Comando per avviare MapProxy
CMD ["mapproxy", "serve-develop", "-b", "0.0.0.0:8080", "/mapproxy/mapproxy.yaml"]
