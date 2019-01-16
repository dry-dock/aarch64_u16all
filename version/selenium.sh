#!/bin/bash -e

echo "==================== Installing Selenium Prereqs ================"
apt-get install -y \
  ca-certificates \
  gconf-service \
  hicolor-icon-theme \
  libappindicator1 \
  libasound2 \
  libcanberra-gtk-module \
  libcurl3 \
  libexif-dev \
  libgconf-2-4 \
  libgl1-mesa-dri \
  libgl1-mesa-glx \
  libnspr4 \
  libnss3 \
  libpango1.0-0 \
  libv4l-0 \
  libxss1 \
  libxtst6 \
  fonts-liberation\
  xdg-utils \
  --no-install-recommends

echo "================== Installing firefox and xvfb  =================="
apt-get install -y xvfb firefox unzip

export SELENIUM_VERSION=3.141.59
echo "================= Installing Selenium ==================="
sudo mkdir /usr/local/selenium >/dev/null 2>&1
sudo wget http://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-"$SELENIUM_VERSION".jar -P /usr/local/selenium

