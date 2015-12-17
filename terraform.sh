#!/bin/bash

CMD="docker run \
       --rm \
       --name terraform \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       kurron/docker-terraform:latest"

#echo $CMD
eval $CMD $*
