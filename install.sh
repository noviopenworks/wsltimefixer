#!/usr/bin/env sh

set -e

# Check if user is root
if ! [ $(id -u) = 0 ]; then
  echo "Please run as root"
  exit
fi

set -x
# Install services
cp wsltimefixer.service /etc/systemd/system/
cp wsltimefixer.timer /etc/systemd/system/
systemctl daemon-reload
systemctl enable wsltimefixer.service
systemctl enable wsltimefixer.timer
systemctl start wsltimefixer.timer

{ set +x; } 2>/dev/null
echo "Done :)"