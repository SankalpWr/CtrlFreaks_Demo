#!/usr/bin/env bash
set -euo pipefail
output="$(bash src/hello.sh)"
expected="Hello, Jenkins!"
if [ "$output" = "$expected" ]; then
  echo "TEST PASSED: Output matched expected: '$expected'"
else
  echo "TEST FAILED: Expected '$expected' but got '$output'"
  exit 1
fi
