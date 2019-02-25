#!/bin/bash

set -e

SCRIPT_PATH="$(cd "$(dirname "$0")"; pwd -P)"

kubectl apply -f $SCRIPT_PATH/rbac-config.yml
helm init --skip-refresh --upgrade --service-account tiller
