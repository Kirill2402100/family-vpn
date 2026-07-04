# Architecture

## High Level

```text
                    GitHub
                       │
                       │
                 Version Control
                       │
                       ▼
                Local Development
                    (VS Code)
                       │
                       │
                 Deploy Scripts
                       │
                       ▼
                  Ubuntu VPS
                       │
        ┌──────────────┼──────────────┐
        │              │              │
        ▼              ▼              ▼
   WireGuard       wg-easy      Monitoring
        │
        ▼
 Family Devices
```

---

## Components

### Local Development

- VS Code
- Git
- GitHub

---

### VPS

- Ubuntu 24.04 LTS
- Docker
- Docker Compose

---

### VPN

- WireGuard
- wg-easy

---

### Monitoring

- Uptime Kuma

---

### Backup

- Cloudflare R2

---

### DNS

- Cloudflare DNS

---

## Principles

- One responsibility per service.
- Docker-first.
- Infrastructure as Code.
- Everything documented.
- Easy recovery.