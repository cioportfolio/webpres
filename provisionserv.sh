#!/usr/bin/env bash

sudo apt-get update
echo "Test if node already installed"
if ! hash node 2>/dev/null; then
  echo "Install curl and zip" 
  sudo apt-get -y install curl zip unzip
  
  echo "Setup node source"
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  
  echo "install node"
  sudo apt-get install -y nodejs

  echo "install npm"
  sudo apt-get install -y npm
  
  # echo "install postgres tools"
  # sudo apt-get install -y postgresql-client-common

  echo "install dependencies for headless chromium"
  sudo apt-get install -y gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
  
  echo "Switch to project folder"
  cd /vagrant

  echo "Install packages"
  npm install
fi