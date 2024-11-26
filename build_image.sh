#!/bin/bash
##############################################################################
##                            Build the image                               ##
##############################################################################
RENDER=base #base, weil kein "nvidia"

uid=$(eval "id -u")
gid=$(eval "id -g")
docker build \
  --no-cache \
  --build-arg RENDER="$RENDER" \
  --build-arg UID="$uid" \
  --build-arg GID="$gid" \
  -f Dockerfile \
  -t rp2024/bullet .

