#!/bin/bash

LOG="/var/log/auth.log"
LIMIT=3

echo "🔍 Checking failed login attempts..."

grep "Failed password" $LOG | awk '{print $11}' | sort | uniq -c | while read count ip
do
    if [ $count -ge $LIMIT ]; then
        echo "🚫 Blocking IP: $ip (Attempts: $count)"
        sudo ufw deny from $ip
    fi
done
