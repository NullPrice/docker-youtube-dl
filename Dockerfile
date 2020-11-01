FROM python:3.9-alpine
LABEL org.opencontainers.image.source https://github.com/NullPrice/docker-youtube-dl

RUN set -x \
   && apk add --no-cache ca-certificates ffmpeg youtube-dl gnupg \
   # Create directory to hold downloads.
   && mkdir /downloads \
   && chmod a+rw /downloads \
   # Basic check it works.
   && youtube-dl --version \
   && mkdir /.cache \
   && chmod 777 /.cache

ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
