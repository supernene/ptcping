#!/bin/bash
# 请将下面的链接替换为你自己的 GitHub ptcping.py 的 Raw 链接
DOWNLOAD_URL="https://raw.githubusercontent.com/supernene/ptcping/main/ptcping.py"
INSTALL_PATH="/usr/bin/ptcping"

if [ "$EUID" -ne 0 ]; then
  echo "请使用 root 权限运行 (sudo)"
  exit 1
fi

echo "正在安装 ptcping..."
curl -sL "$DOWNLOAD_URL" -o "$INSTALL_PATH"

if [ $? -eq 0 ]; then
    chmod +x "$INSTALL_PATH"
    echo "✅ 安装成功！输入 ptcping 即可使用。"
else
    echo "❌ 下载失败。"
    exit 1
fi
