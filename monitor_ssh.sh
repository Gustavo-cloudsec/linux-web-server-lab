#!/bin/bash

echo "Tentativas de acesso SSH falhadas:"
grep "Failed password" /var/log/auth.log

