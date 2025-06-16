#!/bin/bash
echo "System Health Check - $(date)"
echo "-----------------------------"
echo "Uptime:"
uptime
echo ""
echo "Disk Usage:"
df -h /
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 6
