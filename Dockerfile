FROM nginx:latest

COPY loki-linux-amd64 /

COPY entrypoint /

RUN chmod +x /loki-linux-amd64

RUN chmod +x /entrypoint

ENTRYPOINT ["/entrypoint"]