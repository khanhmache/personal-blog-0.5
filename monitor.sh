#!/bin/bash
echo "🔍 === Monitoring Personal Blog 0.5 ==="

echo "Container status:"
sudo docker compose ps

echo -e "\n Healthcheck:"
curl -I http://localhost:8080

echo -e "\n Port listening:"
ss -tlpn | grep -E '8080|8081'

echo -e "\n Last 10 Nginx logs:"
sudo docker logs nginx --tail=10

echo -e "\n Monitoring completed!"
