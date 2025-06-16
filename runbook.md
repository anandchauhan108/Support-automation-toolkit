# Runbook

## health_check.sh
Monitors system uptime, disk usage, memory usage, and top processes.

## log_cleanup.sh
Archives and compresses old logs older than 7 days.

## disk_alert.sh
Alerts if disk usage is above 80%.

## service_restart.sh
Checks if critical services (nginx, mysql) are running and restarts if down.

## tail_logs.sh
Tails the system log file and highlights error keywords.
