#!/bin/bash

# 1st argument: environment file
if [[ -f "$1" ]]; then
  # read environment variables from file
  set -o allexport
  source $1
  set +o allexport
fi

# 2nd argument: image tag name
if [[ -z "$2" ]]; then
  TAG=latest
else
  TAG=$2
fi

export TAG

docker-compose build
