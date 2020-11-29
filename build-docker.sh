#!/usr/bin/env bash

printf "\n> \e[93m\033[1mBuilding Docker image\e[0m\n\n"

set -e

ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd ${ABSOLUTE_PATH}

DOCKER_IMAGE="kahuang/migra:latest"

printf "# Image: \e[1;37m${DOCKER_IMAGE}\e[0m\n\n"

docker build --no-cache -t kahuang/migra:latest .
