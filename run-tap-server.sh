#!/bin/sh

set -eu

cd "$(readlink -f $(dirname $0))"

. ./common.sh

# TODO add cpu pin to this command cd ~/go/src/github.com/solo-io/tap-extension-examples/tap-server-http/sample-tap-server-http/ && go run main.go -p 12000
# alternately, run it via docker
docker run --cpuset-cpus $CPU_TASK_TAP_SERVER --rm -it -p 11200:8080 gcr.io/solo-test-236622/sample-tap-server-http:0.0.2
