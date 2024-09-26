#!/bin/bash
# Navigate to the deployment directory
cd /var/www/html

# Check if Node.js and npm are installed, install if not
if ! command -v npm &> /dev/null
then
    echo "npm not found. Installing Node.js and npm..."
    curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
    sudo yum install -y nodejs
fi

# Install npm dependencies
echo "Installing npm dependencies..."
npm install

npm install html-webpack-plugin source-map-loader --save-dev
