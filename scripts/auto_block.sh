#!/bin/bash

# =========================
# CONFIGURAÇÃO
# =========================
LOG_FILE="/home/gustavo/blocker.log"
AUTH_LOG="/var/log/auth.log"
THRESHOLD=5

# ⚠️ COLOCA SEU IP AQUI PRA NÃO SE BLOQUEAR
WHITELIST=("127.0.0.1" "localhost" "189.37.70.149")

# =========================
# PREPARAÇÃO
# =========================
touch "$LOG_FILE"

echo "=== Execução: $(date) ===" >> "$LOG_FILE"

# =========================
# COLETA DE IPS SUSPEITOS
# =========================
IPS=$(grep "Failed password" "$AUTH_LOG" 2>/dev/null \
    | awk '{print $(NF-3)}' \
    | sort | uniq -c \
    | awk -v t=$THRESHOLD '$1 > t {print $2}')

# =========================
# FUNÇÃO WHITELIST
# =========================
is_whitelisted() {
    local ip="$1"
    for wip in "${WHITELIST[@]}"; do
        if [[ "$ip" == "$wip" ]]; then
            return 0
        fi
    done
    return 1
}

# =========================
# BLOQUEIO
# =========================
for IP in $IPS; do

    if is_whitelisted "$IP"; then
        echo "[IGNORADO] $IP está na whitelist" >> "$LOG_FILE"
        continue
    fi

    if sudo ufw status | grep -q "$IP"; then
        echo "[JA BLOQUEADO] $IP" >> "$LOG_FILE"
    else
        echo "[BLOQUEANDO] $IP" >> "$LOG_FILE"
        sudo ufw deny from "$IP"
    fi

done
