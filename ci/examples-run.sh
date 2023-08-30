#!/bin/sh -e
set -e -u

CMD_PATH=$(realpath "$(dirname "$0")")
BASE_DIR=${CMD_PATH%/*}

if [ $# -gt 1 ]; then
    echo "error: only one build-type allowed"
    exit 1
fi
BUILD_TYPE="${1:-Debug}"

echo "===> Weak Extref Example"
"${BASE_DIR}/build/${BUILD_TYPE}/cmake/examples/test/utest/extref/weak/weak_extref_example"
echo "===> Wrap Extref Example"
"${BASE_DIR}/build/${BUILD_TYPE}/cmake/examples/test/utest/extref/wrap/wrap_extref_example"
echo "===> Weak Selfref Example"
"${BASE_DIR}/build/${BUILD_TYPE}/cmake/examples/test/utest/selfref/weak_selfref_example"
