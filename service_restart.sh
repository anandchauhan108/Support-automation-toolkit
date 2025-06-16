#!/bin/bash
SERVICES=("nginx" "mysql")
for service in "${SERVICES[@]}"; do
  systemctl is-active --quiet $service
  if [ $? -ne 0 ]; then
    echo "$service is not running. Restarting..."
    sudo systemctl restart $service
  else
    echo "$service is running."
  fi
done
