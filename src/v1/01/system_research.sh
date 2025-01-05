#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(cat /etc/timezone)
UTC=$(date +%z | sed 's/0//g')
USER=$(whoami)
OS=$(lsb_release -d | cut -f2)
DATE=$(date "+%d %B %Y г. %H:%M:%S")
UPTIME=$(uptime -p | sed 's/up //')
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
IP=$(hostname -I | awk '{print $1}')

echo "HOSTNAME = ${HOSTNAME}"
echo "TIMEZONE = ${TIMEZONE} UTC ${UTC}"
echo "USER = ${USER}"
echo "OS = ${OS}"
echo "DATE = ${DATE}"
echo "UPTIME = ${UPTIME}"
echo "UPTIME_SEC = ${UPTIME_SEC}"
echo "IP = ${IP}"
