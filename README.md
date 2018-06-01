# Minio [![Docker Repository on Quay](https://quay.io/repository/perriea/alpine-minio/status "Docker Repository on Quay")](https://quay.io/repository/perriea/alpine-minio)

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

**Pull :** `docker pull quay.io/perriea/alpine-minio:1.0`   
**Run :** `docker run -d -p 9000:9000 --env-file .env quay.io/perriea/alpine-minio:1.0`
