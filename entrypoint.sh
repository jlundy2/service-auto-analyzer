#!/bin/sh

if [ ! -z $RP_BINARYSTORE_MINIO_ACCESSKEY_FILE ]; then
  export MINIO_ACCESS_KEY=$(cat $RP_BINARYSTORE_MINIO_ACCESSKEY_FILE)
fi

if [ ! -z $RP_BINARYSTORE_MINIO_SECRETKEY_FILE ]; then
  export MINIO_SECRET_KEY=$(cat $RP_BINARYSTORE_MINIO_SECRETKEY_FILE)
fi

exec /venv/bin/uwsgi --http-auto-chunked --http-keepalive
