# Architecture Decisions

This file records important project decisions and the reasoning behind them.

---

## 001 — Use self-hosted infrastructure

Status: Accepted

Decision:
Use a self-hosted VPS-based VPN instead of a commercial VPN subscription.

Reason:
The project needs infrastructure control, recoverability, and independence from commercial VPN providers.

---

## 002 — Do not use the router as the control point

Status: Accepted

Decision:
Do not install VPN logic on the home router for MVP.

Reason:
Router-level VPN creates a single point of failure for the whole home network. Device-level VPN profiles are easier to debug and safer for the family.

---

## 003 — Use WireGuard as the VPN core

Status: Accepted

Decision:
Use WireGuard as the VPN protocol/core.

Reason:
WireGuard is lightweight, widely supported, and has official clients for the required platforms.

---

## 004 — Use wg-easy for initial management UI

Status: Accepted

Decision:
Use wg-easy instead of building our own web panel in MVP.

Reason:
MVP should focus on reliable infrastructure, not custom UI development.

---

## 005 — Use Docker Compose

Status: Accepted

Decision:
Run services through Docker Compose.

Reason:
Docker Compose makes the server reproducible and easier to restore on a new VPS.

---

## 006 — Keep Railway out of MVP

Status: Accepted

Decision:
Do not use Railway in the first version.

Reason:
The MVP does not need a separate application backend yet. Railway may be useful later for a dashboard or control plane.

---

## 007 — Use GitHub as source of truth

Status: Accepted

Decision:
All infrastructure files, scripts, and documentation live in GitHub.

Reason:
The server should be reproducible from the repository, not from undocumented manual changes.