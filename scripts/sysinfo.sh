#!/bin/bash

# System Information Script
# Displays basic system information for DevOps monitoring
echo "================================"
echo "  SYSTEM INFORMATION REPORT"
echo "================================"
echo ""

echo "Current User:"
whoami
echo ""

echo "Current Date and Time:"
date
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "System Uptime:"
uptime
echo ""

echo "================================"
echo "Report Generated Successfully!"
echo "================================"
