#!/bin/sh
if [ ! -f UUID ]; then
  UUID="495f5347-3e5a-4e21-868c-16bdd5c40b41"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

