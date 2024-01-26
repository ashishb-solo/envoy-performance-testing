set -x

ENVOY_ARGS="--concurrency 1"
NIGHTHAWK_CLIENT_ARGS="--rps 1000 --connections 4 --concurrency auto --prefetch-connections -v info http://127.0.0.1:11000/"
CPU_TASK_ENVOY_GLOO_EE=1
CPU_TASK_NIGHTHAWK_SERVER=2
CPU_TASK_TAP_SERVER=3
CPU_TASK_NIGHTHAWK_CLIENT="4-5"
