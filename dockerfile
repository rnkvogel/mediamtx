FROM bluenviron/mediamtx:latest-ffmpeg

COPY mediamtx.yml /mediamtx.yml
COPY entrypoint.sh /entrypoint.sh
COPY hooks/ /hooks/

RUN chmod +x /entrypoint.sh /hooks/*.sh

ENTRYPOINT ["/entrypoint.sh"]
