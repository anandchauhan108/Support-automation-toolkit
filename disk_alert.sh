#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above threshold: ${USAGE}%"
else
  echo "Disk usage is within limits: ${USAGE}%"
fi
