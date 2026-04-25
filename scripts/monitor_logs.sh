#!/bin/bash

echo "==== Tentativas de login falhas===="
grep "Failed password" /var/log/auth.log

echo ""
echo "==== IPs Suspeitos ===="
grep "Failed password" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr

echo ""
echo "==== Últimas 10 tentativas ===="
tail -n 10 /var/log/auth.log

