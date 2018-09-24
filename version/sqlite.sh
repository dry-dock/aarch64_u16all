#!/bin/bash -e

SQLITE_VERSION=3.11.0
echo "================= Installing SQLite $SQLITE_VERSION ==================="

sudo add-apt-repository ppa:jonathonf/backports
apt-get install sqlite3="$SQLITE_VERSION"*

