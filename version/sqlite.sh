#!/bin/bash -e

SQLITE_VERSION=3.11.0
echo "================= Installing SQLite $SQLITE_VERSION ==================="

apt-get install sqlite3="$SQLITE_VERSION"*
