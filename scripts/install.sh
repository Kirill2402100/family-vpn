#!/usr/bin/env bash
set -euo pipefail

echo "====================================="
echo " Family VPN Platform Installer"
echo "====================================="

if [[ $EUID -ne 0 ]]; then
  echo "Run this script as root."
  exit 1
fi

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is not installed."
  exit 1
fi

if ! docker compose version >/dev/null 2>&1; then
  echo "Docker Compose plugin is not installed."
  exit 1
fi

echo "Starting services..."
docker compose -f docker/docker-compose.yml up -d

echo "Services:"
docker ps

echo "Done."
