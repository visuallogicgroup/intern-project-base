#!/usr/bin/env bash

echo "--------------------------------------------------"
echo "----------------Starting provision----------------"
echo "--------------------------------------------------"

# Install core components
apt-get update
# Install build tools
echo "--------------------------------------------------"
echo "----------------Installing build tools------------"
echo "--------------------------------------------------"
apt-get install -y make g++ git curl vim libcairo2-dev libav-tools nfs-common portmap

# Install Node.js
echo "--------------------------------------------------"
echo "----------------Installing NodeJS-----------------"
echo "--------------------------------------------------"
apt-get install -y nodejs
ln -s /usr/bin/nodejs /usr/bin/node

# Install MongoDB
echo "--------------------------------------------------"
echo "----------------Installing MongoDB----------------"
echo "--------------------------------------------------"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install -y mongodb-org

#Install global NPM modules
echo "----------------Installing NPM Modules------------"
apt-get install -y npm
npm install -g pm2
npm install -g gulpjs
npm install -g ampersand
npm install -g react-tools
npm install -g webpack
npm install -g express-generator

echo "--------------------------------------------------"
echo "----------------Provision Complete----------------"
echo "--------------------------------------------------"
