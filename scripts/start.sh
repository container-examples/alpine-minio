#! /bin/sh

chown -R minio:minio /data
chmod +x /usr/bin/minio
exec su-exec minio /usr/bin/minio server /data