
#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing nginx..."
sudo apt update -y

echo "Checking nginx status..."
sudo systemctl is-active --quiet nginx
if [ $? -eq 0]; then
echo "Nginx is running"
else
echo "Nginx failed to start"
fi

echo "Installing UFW..."
sudo apt install ufw -y

echo "Configuring firewall..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow 80

echo "Enabling firewll..."
sudo ufw --force enable

echo "Checking firewall status..."
sudo ufw status

echo "Testing web server..."
curl -I http://localhost

