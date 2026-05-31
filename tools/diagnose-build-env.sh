#!/usr/bin/env bash
set -euo pipefail

REQUIRED=(lb debootstrap mksquashfs xorriso isohybrid)
OPTIONAL=(qemu-system-x86_64 sha256sum)

missing=0

echo "chanxOS build environment check"
echo "================================"
cat /etc/os-release 2>/dev/null | grep -E '^(PRETTY_NAME|VERSION_CODENAME)=' || true
echo

echo "Required tools:"
for cmd in "${REQUIRED[@]}"; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf '  [OK]      %s -> %s\n' "$cmd" "$(command -v "$cmd")"
  else
    printf '  [MISSING] %s\n' "$cmd"
    missing=1
  fi
done

echo
echo "Optional tools:"
for cmd in "${OPTIONAL[@]}"; do
  if command -v "$cmd" >/dev/null 2>&1; then
    printf '  [OK]      %s -> %s\n' "$cmd" "$(command -v "$cmd")"
  else
    printf '  [OPTIONAL MISSING] %s\n' "$cmd"
  fi
done

echo
df -h . || true

if [[ "$missing" -eq 1 ]]; then
  echo
  echo "Some required tools are missing. Run:"
  echo "  ./scripts/install-build-deps.sh"
  exit 1
fi

echo
echo "Environment looks ready."
