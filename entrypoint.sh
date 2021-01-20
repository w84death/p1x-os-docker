#!/bin/bash
set -ex

echo "p1x-os" > /etc/hostname
mv /usr/share/novnc/vnc.html /usr/share/novnc/index.html
exec supervisord -c /os/supervisord.conf
