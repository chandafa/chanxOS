#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

DISTRO="${DISTRO:-bookworm}"
ARCHIVE_AREAS="${ARCHIVE_AREAS:-main contrib non-free non-free-firmware}"

if [[ "${EUID}" -ne 0 ]]; then
  SUDO="sudo"
else
  SUDO=""
fi

echo "== chanxOS Package Availability Test =="
echo "Target distro : $DISTRO"
echo "Archive areas : $ARCHIVE_AREAS"

echo "Refreshing apt metadata on host system..."
${SUDO} apt update

FAILED=0
while read -r pkg; do
  [[ -z "$pkg" ]] && continue
  echo "Checking package: $pkg"
  if ! apt-cache show "$pkg" >/dev/null 2>&1; then
    echo "MISSING: $pkg"
    FAILED=1
  fi
done < <(grep -hEv '^\s*#|^\s*$' config/package-lists/*.list.chroot | sort -u)

if [[ "$FAILED" -eq 1 ]]; then
  echo
  echo "Some packages are missing in the current host apt metadata."
  echo "Run this on Debian 12/bookworm or inside the same build VM used for chanxOS."
  exit 1
fi

echo "All packages are available according to current apt metadata."
