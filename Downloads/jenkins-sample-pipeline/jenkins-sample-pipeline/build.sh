#!/usr/bin/env bash
set -euo pipefail
mkdir -p dist
bash src/hello.sh > dist/hello.txt
echo "Build complete. Artifact at dist/hello.txt"
