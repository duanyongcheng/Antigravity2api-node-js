#!/bin/bash

echo "==> 重新构建镜像并启动容器..."
docker compose up --build -d

echo "==> 清理悬空镜像..."
docker image prune -f

echo "==> 完成！"
docker compose ps
