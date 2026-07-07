# Family VPN

## Goal

Family VPN — это self-hosted VPN-платформа для семьи.

Цель проекта — иметь инфраструктуру, которую можно быстро развернуть на новом VPS, восстановить после сбоя и использовать на разных устройствах без зависимости от коммерческих VPN-сервисов.

## Supported Platforms

MVP должен поддерживать:

- iOS / iPadOS
- macOS
- Windows
- Android
- Android TV

## MVP

Первая версия должна уметь:

- разворачивать VPN на чистом Ubuntu VPS;
- запускать WireGuard через Docker;
- управлять клиентами через веб-интерфейс;
- подключать семейные устройства;
- делать резервные копии конфигурации;
- восстанавливаться из backup;
- проходить acceptance tests.

## Definition of Done

MVP считается рабочим только если:

- контейнеры запущены;
- WireGuard слушает UDP-порт;
- клиент проходит handshake;
- DNS работает через VPN;
- TCP/HTTP/HTTPS трафик проходит через VPN;
- минимум два клиента из разных платформ успешно подключаются;
- процедура восстановления задокументирована;
- сервер можно повторно развернуть из Git-репозитория.

## Principles

- Infrastructure as Code.
- Docker-first.
- Git is the source of truth.
- Minimum manual actions.
- One VPS — one responsibility.
- Reproducibility over quick fixes.
- Tests before new features.
- Simplicity over feature count.

## Not in MVP

- собственное VPN-приложение;
- собственный VPN-протокол;
- собственная веб-панель;
- несколько VPS;
- high availability;
- smart routing по доменам;
- автоматический выбор сервера.

## Future

После MVP проект может быть расширен:

- несколько VPN-серверов;
- централизованное управление;
- smart routing;
- правила вида YouTube через VPN, локальные сервисы напрямую;
- мониторинг и алерты;
- автоматическое восстановление;
- собственная панель управления.
