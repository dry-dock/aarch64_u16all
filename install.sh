#!/bin/bash -e

sudo chmod 1777 /tmp

for file in /u16all/version/*.sh;
do
  . "$file"
done

# TODO: 
#echo "================= Adding shippable_service ==================="

echo "================= Adding packages for shippable_service =================="
apt install -y netcat

echo "================= Cleaning package lists ==================="
apt-get clean
apt-get autoclean
apt-get autoremove
