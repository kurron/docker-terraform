#!/bin/bash

CMD="docker run \
       --rm \
       --name packer \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       kurron/docker-packer:latest"

#echo $CMD
eval $CMD $*
