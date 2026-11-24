#!/usr/bin/env bash
set -e
LIB="prime-digest.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/rivadogrcove/nodeactiveharbor/releases/download/crimson-badger-frosty-delta/prime-digest.a"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
