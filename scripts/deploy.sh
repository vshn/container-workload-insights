#!/bin/sh
set -eu
. scripts/env.sh
echo $TOKEN | docker login -u $DOCKER_USER --password-stdin ${DOCKER_REGISTRY}
docker push $DOCKER_IMAGE