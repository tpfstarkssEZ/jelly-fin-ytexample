FROM jellyfin/jellyfin:latest

RUN mkdir -p /config /media && chmod -R 777 /config /media

EXPOSE 8096

CMD ["sh", "-c", "export JELLYFIN_PublishedServerUrl=http://0.0.0.0:${PORT:-8096} && jellyfin"]
