#!/bin/bash
echo "inside-sh file"

# Directory where your Node.js application is deployed
APP_DIR="/home/ubuntu/node-connect-server-dev-test/"

# Remote Git repository URL
GIT_REPO="git@github.com:iomdi2i/node-connect-server.git"

# Change directory to your app directory
cd $APP_DIR

ls

# Pull the latest code from your Git repository
git clone $GIT_REPO
cd node-connect-server/
git pull origin dev

# Install or update Node.js application dependencies (assumes you're using npm)
npm install

# Restart your Node.js application
# Replace 'app.js' with the main entry point of your Node.js application
pm2 restart app.js  # You can use pm2 or another process manager of your choice

# Exit the SSH session
exit 0

