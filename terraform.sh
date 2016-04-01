#!/bin/bash

CMD="docker run \
       --rm \
       --interactive \
       --tty \
       --net "host" \
       --user=$(id -u $(whoami)):$(id -g $(whoami)) \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       --env AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
       --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
       --env AWS_REGION=$AWS_REGION \
       kurron/docker-terraform:0.6.14"

#echo $CMD
eval $CMD $*
