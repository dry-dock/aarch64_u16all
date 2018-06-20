#!/bin/bash -e

sudo chmod 1777 /tmp

# update packages before starting service installs
apt-get update

for file in /u16all/version/*.sh;
do
  . "$file"
done

echo "================= Adding shippable_service ==================="
mkdir -p /usr/local/bin/shippable_services
cp /u16all/services/* /usr/local/bin/shippable_services
mv /usr/local/bin/shippable_services/shippable_service /usr/local/bin/shippable_service

echo "================= Adding packages for shippable_service =================="
apt install -y netcat

echo "================= Adding pycrypto ============"
pip install pycrypto

echo "================= Cleaning package lists ==================="
apt-get clean
apt-get autoclean
apt-get autoremove
