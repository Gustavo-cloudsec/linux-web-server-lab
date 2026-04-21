#!/bin/bash

echo "Atualizando sistema..."
sudo apt update

echo "Instalando nginx..."
sudo apt install nginx -y

echo "Instalando curl..."
sudo apt install curl -y

echo "Configurando firewall..."

sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw defalt allow outgoing
sudo ufw allow 22
sudo ufw allow 80
sudo ufw --force enable
