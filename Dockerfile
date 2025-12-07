FROM kartoza/mapproxy:latest

RUN mkdir -p /mapproxy /mapproxy/cache_data

COPY mapproxy.yaml /mapproxy/mapproxy.yaml

RUN chown -R mapproxy:mapproxy /mapproxy

EXPOSE 8080

CMD ["uwsgi", "--ini", "/settings/uwsgi.ini"]
