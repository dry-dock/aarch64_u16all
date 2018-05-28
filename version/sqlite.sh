#!/bin/bash -e

SQLITE_VERSION=3.22.0
echo "================= Installing SQLite $SQLITE_VERSION ==================="

apt-get install sqlite3="$SQLITE_VERSION"*

