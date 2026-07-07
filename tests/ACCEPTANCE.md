# Acceptance Tests

Family VPN Core считается рабочим только если пройдены все проверки.

## Server

- VPS доступен по SSH.
- Docker установлен.
- wg-easy контейнер запущен.
- WireGuard слушает UDP порт.
- `ip_forward = 1`.
- Есть NAT/MASQUERADE.
- Есть handshake от клиента.
- На `wg0` виден DNS-трафик.
- На `wg0` виден TCP-трафик.
- Через VPN открывается `http://1.1.1.1`.
- Через VPN открывается обычный сайт.

## Client Matrix

Минимально для MVP:

- iOS / iPhone
- macOS

Позже:

- iPadOS
- Windows
- Android
- Android TV

## MVP Pass Condition

MVP считается готовым, если один и тот же VPS работает минимум на двух клиентах:

- iPhone
- macOS или Windows

