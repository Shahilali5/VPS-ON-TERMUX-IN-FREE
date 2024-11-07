#!/bin/bash

clear
toilet -f mono12 -F border --gay "Shahil Free VPS"
echo ""
figlet "Welcome to Shahil's Free VPS"
echo "-----------------------------------------"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "-----------------------------------------"
echo ""

# Update package manager and install essential packages
pkg update && pkg upgrade -y
pkg install -y nodejs npm python git figlet toilet

# Install PM2 globally
npm install -g pm2

# Install Telegram bot-related packages globally
npm install -g telegraf node-telegram-bot-api

PS1='\033[1;32m\u@\033[1;34mShahil_Free_VPS:\033[1;36m\w\033[0m$ '

# Inform the user that setup is complete
echo ""
echo "Setup complete! Node.js, PM2, and Telegram bot libraries are ready to use."
echo ""

while true; do
    echo "Shahil Free VPS [ $(date '+%H:%M:%S') ] $USER@shahil:~#"
    read -p "Enter command: " cmd
    if [[ $cmd == "exit" ]]; then
        echo "Goodbye from Shahil Free VPS!"
        break
    else
        eval "$cmd"
    fi
don
