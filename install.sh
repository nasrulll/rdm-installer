#!/usr/bin/env bash
set -e

REPO_RAW="https://raw.githubusercontent.com/USERNAME/rdm-installer/main"
WORKDIR="/opt/rdm-installer"

if [ "$EUID" -ne 0 ]; then
  echo "[ERROR] Jalankan sebagai root"
  exit 1
fi

echo "===================================="
echo " RDM INSTALLER (GitHub)"
echo "===================================="

rm -rf "$WORKDIR"
mkdir -p "$WORKDIR/lib"
cd "$WORKDIR"

FILES=(
  config.sh
  check.sh
  install_base.sh
  database.sh
  deploy_rdm.sh
  nginx.sh
)

for f in "${FILES[@]}"; do
  echo "→ Download lib/$f"
  curl -fsSL "$REPO_RAW/lib/$f" -o "lib/$f"
  chmod +x "lib/$f"
done

curl -fsSL "$REPO_RAW/VERSION" -o VERSION

echo "[INFO] Installer version: $(cat VERSION)"

source lib/config.sh
source lib/check.sh
source lib/install_base.sh
source lib/database.sh
source lib/deploy_rdm.sh
source lib/nginx.sh

echo "===================================="
echo " INSTALLASI RDM SELESAI"
echo "===================================="
