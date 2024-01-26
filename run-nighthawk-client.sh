#!/bin/sh

cd "$(readlink -f $(dirname $0))"

. ./common.sh

taskset -c $CPU_TASK_ENVOY_GLOO_EE nighthawk_binaries/nighthawk_client ${NIGHTHAWK_CLIENT_ARGS} $@
