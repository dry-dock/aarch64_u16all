#!/bin/bash -e

VERSION=1.6.0
echo "================= Installing CouchDB $VERSION ==================="
sudo apt-get install couchdb="$VERSION"* couchdb-bin="$VERSION"* couchdb-common="$VERSION"* -yf

