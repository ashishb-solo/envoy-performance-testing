#!/bin/sh

set -eu

cd "$(readlink -f $(dirname $0))"

. ./common.sh

taskset -c $CPU_TASK_ENVOY_GLOO_EE nighthawk_binaries/envoy-static $ENVOY_ARGS --config-path envoy_configs/envoy-gloo-ee.yaml --base-id 11100 $@
