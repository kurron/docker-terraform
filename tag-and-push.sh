#!/usr/bin/env bash

# use the time as a tag
UNIXTIME=$(date +%F)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag kurron/docker-terraform:latest kurron/docker-terraform:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-terraform:latest
docker push kurron/docker-terraform:${UNIXTIME}

