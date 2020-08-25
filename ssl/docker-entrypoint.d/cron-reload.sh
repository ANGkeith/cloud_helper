#!/bin/sh
ME=$(basename "$0")

echo >&3 "$ME: Cron task started!"

# cron task to reload nginx
while true
do
  sleep 6h &
  wait ${!};
  echo >&3 "$ME: Reloading nginx";
  nginx -s reload;
done &