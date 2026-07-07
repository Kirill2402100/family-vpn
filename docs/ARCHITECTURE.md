# Architecture

## High Level

               GitHub
                  │
                  ▼
         Local Development
             (VS Code)
                  │
                  ▼
           Deploy Scripts
                  │
                  ▼
            Ubuntu 24.04 VPS
                  │
        ┌─────────┴─────────┐
        │                   │
        ▼                   ▼
   Docker Engine      Linux Networking
        │             (iptables, routing)
        │                   │
        └─────────┬─────────┘
                  ▼
               wg-easy
                  │
                  ▼
             WireGuard
                  │
                  ▼
           Family Devices

