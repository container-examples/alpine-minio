FROM alpine:3.6

LABEL MAINTAINER="Aurelien PERRIER <a.perrier89@gmail.com>"
LABEL APP="minio"
LABEL APP_VERSION="latest"
LABEL APP_REPOSITORY="https://github.com/minio/minio/releases"

ENV TIMEZONE Europe/Paris
ENV MINIO_ACCESS_KEY minio
ENV MINIO_SECRET_KEY minio
ENV MINIO_BROWSER on

# Installing packages
RUN apk add --no-cache su-exec

# Downloading packages
ADD https://dl.minio.io/server/minio/release/linux-amd64/minio /usr/bin/minio
COPY scripts/start.sh .

# Updating rights
RUN chmod +x /usr/bin/minio && \ 
    addgroup minio && \
    adduser -s /bin/false -G minio -S -D minio

VOLUME [ "/data" ]

EXPOSE 9000

ENTRYPOINT  ["./start.sh"]