#!/bin/sh -e

if [ "$1" = 'diagram' ]; then
    exec python ./natlas-cli.py diagram -r ${TARGET_HOST} -o /topology_image/topology-$(date +%Y-%m-%d-%H-%M-%S).${FILE_EXTENSION}
fi

exec python ./natlas-cli.py "$@"
