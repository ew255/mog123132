#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5edbf198-8b25-47c4-b13e-6ac12de5950f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

