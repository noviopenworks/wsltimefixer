# WSL Time Drift Fixer

This is a simple guide to add new systemd service that fixes time drift in WSL.

## Prerequisites

- A Linux distribution compatible with systemd installed in WSL2
- Installed `ntpdate` command
- `systemd` enabled in /etc/wsl.conf
```
[boot]
systemd=true
```
## Instalation
 - Clone repository
 - run a script as root
 ```
 ./install.sh 
 ```
 - Enjoy
