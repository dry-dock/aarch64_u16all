#!/bin/bash -e

MEM_VERSION=1.4.25
LIB_VERSION=1.0.18

echo "================= Installing MemCached Prereqs ==================="
apt-get install -y libevent-dev libsasl2-dev

echo "================= Installing Memcached and LibMemCached ==================="
apt-get install -y memcached="$MEM_VERSION"* libmemcached11="$LIB_VERSION"*

