#!/bin/bash

echo "Atualizando sistema..."
sudo apt update

echo "Instalando nginx..."
sudo apt install nginx -y

echo "Instalando curl..."
sudo apt install curl -y

