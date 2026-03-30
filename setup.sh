#!/bin/bash

set -e

echo "========================================"
echo "   Personal Blog Level 0.5 - Setup"
echo "========================================"

if ! command -v docker compose &> /dev/null; then
	echo " Docker Compose chưa cài đặt!"
	exit 1
fi

echo " Dừng container cũ..."
sudo docker compose down --volumes >/dev/null 2>&1 || true

sudo mkdir -p logs

echo "Khởi động project..."
sudo docker compose up -d --build

echo ""
echo "✅ Setup hoàn tất!"
echo "🌐 Website : http://localhost:8080"
echo "📊 Dozzle   : http://localhost:8081"
echo "🔍 Monitor  : ./monitor.sh"
echo "========================================"
EOF
