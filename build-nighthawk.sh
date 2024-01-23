#!/bin/sh

# Build the nighthawk client and server executables and copy them into
# nighthawk_binaries/

# WARNING these build commands only work on my (ashish's) machine (TODO fix
# this?)

DOCKER_BUILD_DIR=/build/nighthawk/

cd "$(readlink -f $(dirname $0))"
WORKDIR="$PWD"
mkdir -p nighthawk_binaries

cd ~/dev/envoy/envoy-gloo-docker/
docker compose exec -w ${DOCKER_BUILD_DIR} envoybuild ci/do_ci.sh build
docker compose exec -w ${DOCKER_BUILD_DIR} envoybuild bazel build -j 10 -c opt :nighthawk_test_server
docker compose cp envoybuild:${DOCKER_BUILD_DIR}/bazel-bin/nighthawk_client $WORKDIR/nighthawk_binaries
docker compose cp envoybuild:${DOCKER_BUILD_DIR}/bazel-bin/nighthawk_test_server ${WORKDIR}/nighthawk_binaries
