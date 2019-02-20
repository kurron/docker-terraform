#!/usr/bin/env bash

USER_ID=$(id -u $(whoami))
GROUP_ID=$(id -g $(whoami))
HOME_DIR=$(cut -d: -f6 < <(getent passwd ${USER_ID}))

CMD="docker run --hostname terraform \
                --env HOME=${HOME_DIR} \
                --interactive \
                --name terraform-test \
                --rm \
                --tty \
                --user=${USER_ID}:${GROUP_ID} \
                --volume $(pwd):$(pwd) \
                --volume ${HOME_DIR}:${HOME_DIR} \
                --volume /etc/passwd:/etc/passwd \
                --volume /etc/group:/etc/group \
                --workdir $(pwd) \
                kurron/docker-terraform:latest $*"
echo $CMD
$CMD
