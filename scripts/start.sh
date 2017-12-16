#! /bin/sh

chown -R minio:minio /data
exec su-exec minio /usr/bin/minio server /data