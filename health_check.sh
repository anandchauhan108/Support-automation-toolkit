#!/bin/bash
echo "System Health Check - $(date)"
echo "-----------------------------"
echo "Uptime:"
uptime
echo ""
echo "Disk Usage:"
df -h 
echo ""
echo "Memory Usage: reverse sorted based on usage column"
free -h | sort -k 5 -hr
echo ""
echo "Top 5 Memory Consuming Processes:"
ps -ef -o %mem | head -n 6
