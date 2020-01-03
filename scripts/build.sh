#!/bin/sh
. scripts/env.sh
docker build -t $DOCKER_IMAGE .
