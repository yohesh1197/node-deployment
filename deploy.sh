#!/bin/bash
echo "inside-sh file"

# Directory where your Node.js application is deployed
APP_DIR="/home/ubuntu/node-connect-server-dev/"

# Change directory to your app directory
cd $APP_DIR

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

nvm install --lts
echo node version - $(node -v)
# ls

# Pull the latest code from your Git repository
git pull origin dev
echo "Git pull success"

# Install or update Node.js application dependencies (assumes you're using npm)
npm run install_deps
echo "Dependency installation success"

pm2 kill & 
echo "pm2 kill started"
wait %1
echo "pm2 kill success"

echo "App deployment started"
npm run client:dev 
echo "App deployment success"

exit 0

