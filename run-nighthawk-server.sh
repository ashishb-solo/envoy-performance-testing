#!/bin/sh

set -eu

cd "$(readlink -f $(dirname $0))"

. ./common.sh

taskset -c $CPU_TASK_NIGHTHAWK_SERVER nighthawk_binaries/nighthawk_test_server $ENVOY_ARGS --config-path envoy_configs/nighthawk-server.yaml --base-id 11000 $@
