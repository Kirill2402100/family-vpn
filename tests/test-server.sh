#!/usr/bin/env bash
set -euo pipefail

echo "== Docker containers =="
docker ps

echo
echo "== wg-easy WireGuard =="
docker exec wg-clean wg show || docker exec family-vpn-wg-easy wg show

echo
echo "== IPv4 forwarding =="
cat /proc/sys/net/ipv4/ip_forward

echo
echo "== NAT nft =="
iptables -t nat -L POSTROUTING -n -v | grep -E '10\.8|MASQUERADE' || true

echo
echo "== NAT legacy =="
iptables-legacy -t nat -L POSTROUTING -n -v | grep -E '10\.8|MASQUERADE' || true

echo
echo "== Listening UDP =="
ss -lunp | grep -E '51820|51830' || true
