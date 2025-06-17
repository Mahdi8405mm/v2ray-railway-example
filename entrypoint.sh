#!/bin/sh

if [ -z "$UUID" ]; then
  echo "Error: UUID environment variable not set"
  exit 1
fi

sed -i "s/00000000-0000-0000-0000-000000000000/$UUID/g" /etc/v2ray/config.json

exec v2ray -config /etc/v2ray/config.json
