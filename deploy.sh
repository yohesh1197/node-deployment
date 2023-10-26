#!/bin/bash
echo "inside-sh file"

# Directory where your Node.js application is deployed
APP_DIR="/home/ubuntu/node-connect-server-dev/"

# Change directory to your app directory
cd $APP_DIR

# ls

# Pull the latest code from your Git repository
git pull upstream dev
echo "Git pull success"

# Install or update Node.js application dependencies (assumes you're using npm)
npm run install_deps
echo "Dependency installation success"

pm2 kill
echo "pm2 kill success"

npm run dev
echo "App deployment sucess"

exit 0

