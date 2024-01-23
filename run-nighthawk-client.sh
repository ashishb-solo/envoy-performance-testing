#!/bin/sh

cd "$(readlink -f $(dirname $0))"

. ./common.sh

taskset -c $CPU_TASK_ENVOY_GLOO_EE nighthawk_binaries/nighthawk_client --rps 1000 --connections 4 --concurrency auto --prefetch-connections -v info http://127.0.0.1:11000/ $@
