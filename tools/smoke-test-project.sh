#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

./tools/test-scripts.sh
./tools/diagnose-build-env.sh || true

echo

echo "Project smoke test completed."
echo "Note: package availability test is separate because it runs apt update."
echo "Run it with: ./tools/test-packages.sh"
