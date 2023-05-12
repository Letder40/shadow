#!/bin/bash
if [[ $(whoami) != "root" ]]; then
  echo "[!] You need to be root to install shadow"
  exit 1
fi
mkdir /opt/shadow
chmod 777 /opt/shadow
cp shadow.py /opt/shadow/shadow.py
ln -s /opt/shadow/shadow.py /usr/bin/shadow
