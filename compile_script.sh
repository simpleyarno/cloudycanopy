#!/usr/bin/env bash
set -e
LIB="slim-glint.a"
TAG="golden-harbor-gentle-canyon"
REPO="simpleyarno/cloudycanopy"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
