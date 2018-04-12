#!/bin/bash -e

VERSION=2.1.1
echo "================= Installing CouchDB $VERSION ==================="
sudo apt-get install couchdb="$VERSION"* couchdb-bin="$VERSION"* couchdb-common="$VERSION"* -yf

