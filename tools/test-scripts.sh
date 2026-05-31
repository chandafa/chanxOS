#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

echo "== chanxOS Script Syntax Test =="

SCRIPT_PATHS=(
  "build.sh"
  "clean.sh"
  "scripts/install-build-deps.sh"
  "tools/diagnose-build-env.sh"
  "tools/make-checksum.sh"
  "tools/test-qemu.sh"
  "tools/test-packages.sh"
  "tools/smoke-test-project.sh"
)

while IFS= read -r -d '' script; do
  SCRIPT_PATHS+=("$script")
done < <(find config/hooks/normal -maxdepth 1 -type f \( -name '*.hook.chroot' -o -name '*.hook.binary' \) -print0 | sort -z)

while IFS= read -r -d '' script; do
  SCRIPT_PATHS+=("$script")
done < <(find config/includes.chroot/usr/local/bin -maxdepth 1 -type f -name 'chanx-*' -print0 | sort -z)

for file in "${SCRIPT_PATHS[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "ERROR: missing file: $file"
    exit 1
  fi

  echo "Checking syntax: $file"
  bash -n "$file"

  if [[ ! -x "$file" ]]; then
    echo "ERROR: not executable: $file"
    exit 1
  fi
done

echo "All script checks passed."
