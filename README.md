# Minio [![Build Status](https://drone.aurelienperrier.com/api/badges/Docker-example/alpine-minio/status.svg?branch=master)](https://drone.aurelienperrier.com/Docker-example/alpine-minio)

## Versions

Alpine : `3.7`   
Minio : `latest`

## Credentials

**Default :**
* `MINIO_ACCESS_KEY` : `docker-minio`,
* `MINIO_SECRET_KEY` : `docker-minio`,
* `MINIO_BROWSER` : `on`

**Custom :** In the `.env` file, change the different values to suit your needs.

## Commands

**Pull :** `docker pull perriea/alpine-minio:3.7`   
**Run :** `docker run -d -p 9000:9000 --env-file .env perriea/alpine-minio:3.7`
