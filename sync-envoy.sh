#!/bin/sh

# Build envoy-gloo-ee and copy it into nighthawk_binaries/

DOCKER_BUILD_DIR=/build/envoy-gloo-ee

cd "$(readlink -f $(dirname $0))"
WORKDIR="$PWD"
mkdir -p nighthawk_binaries

cd ~/dev/envoy/envoy-gloo-docker/
docker compose exec -w ${DOCKER_BUILD_DIR}/ envoybuild bazel build -j 10 //source/exe:envoy-static
docker compose cp envoybuild:${DOCKER_BUILD_DIR}/bazel-bin/source/exe/envoy-static $WORKDIR/nighthawk_binaries

