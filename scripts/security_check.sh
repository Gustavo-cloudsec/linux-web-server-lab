
#!/bin/bash

echo "Failed SSH attempts:"
sudo grep "Failed password" /var/log/auth.log | tail

echo "Top IPs acessing nginx:"
cut -d ' ' -f1 /var/log/nginx/acess.log | sort | uniq -c | sort -nr | head

