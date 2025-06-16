#!/bin/bash
LOG_FILE="/var/log/syslog"
KEYWORDS=("ERROR" "FAIL" "CRITICAL")
tail -n 100 $LOG_FILE | grep -Ei "${KEYWORDS[*]}"
