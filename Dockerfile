FROM alpine:3.6

LABEL MAINTAINER="Aurelien PERRIER <a.perrier89@gmail.com>"
LABEL APP="minio"
LABEL APP_VERSION="latest"
LABEL APP_REPOSITORY="https://github.com/minio/minio/releases"

ENV TIMEZONE Europe/Paris
ENV MINIO_ACCESS_KEY docker-minio
ENV MINIO_SECRET_KEY docker-minio
ENV MINIO_BROWSER on

# Installing packages
RUN apk add --no-cache su-exec

# Downloading Minio
ADD https://dl.minio.io/server/minio/release/linux-amd64/minio /usr/bin/minio
RUN addgroup minio && \
    adduser -s /bin/false -G minio -S -D minio

# Work path
WORKDIR /scripts

COPY scripts/start.sh start.sh

VOLUME [ "/data" ]

EXPOSE 9000

ENTRYPOINT  ["./start.sh"]