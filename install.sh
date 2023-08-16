#!/bin/bash
set -ex
source lib.sh

check_packages wget gpg apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' >/etc/apt/sources.list.d/dart_stable.list

apt-get install dart

updaterc 'export PATH="$PATH:/usr/lib/dart/bin"'
