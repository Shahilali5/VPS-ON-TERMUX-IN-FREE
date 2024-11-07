#!/bin/bash

clear

# Track the start time of the script
start_time=$(date +%s)

while true; do
    clear

    # Calculate the elapsed time since the script started
    current_time=$(date +%s)
    elapsed=$((current_time - start_time))
    days=$((elapsed / 86400))
    hours=$(( (elapsed % 86400) / 3600 ))
    minutes=$(( (elapsed % 3600) / 60 ))

    # Display the name in the center with toilet
    toilet -f term -F border --gay "Shahil VPS FREE" | awk '{ print "\033[1;32m" $0 "\033[0m" }' 
    echo ""

    echo -e "\033[1;32mWelcome to Shahil's Free VPS\033[0m"
    echo "-----------------------------------------"
    
    echo -e "\033[1;36mHostname:\033[0m $(hostname)"
    echo -e "\033[1;36mDate:\033[0m $(date)"
    echo -e "\033[1;36mUptime:\033[0m up $days days, $hours hours, $minutes minutes"
    echo -e "\033[1;36mLocalhost:\033[0m http://localhost:8080"
    echo "-----------------------------------------"
    echo ""

    echo -e "\033[1;33mSystem Health Info:\033[0m"
    echo -e "\033[1;33mRAM Usage:\033[0m $(free -h | grep Mem | awk '{print $3 "/" $2}')"
    echo -e "\033[1;33mStorage Usage:\033[0m $(df -h | grep '/data' | awk '{print $3 "/" $2}')"
    echo "-----------------------------------------"
    echo ""

    pkg update && pkg upgrade -y
    pkg install -y nodejs npm python git figlet toilet

    if ! command -v node &> /dev/null
    then
        npm install -g pm2 || echo "Failed to install PM2"
        npm install -g telegraf node-telegram-bot-api || echo "Failed to install Telegram bot libraries"
        echo ""
        echo "Setup complete! Node.js, PM2, and Telegram bot libraries are ready to use."
    else
        echo "Packages already installed. Skipping installation."
    fi

    echo -e "\033[1;34mStarting Node.js server on http://localhost:8080...\033[0m"
    nohup node -e "require('http').createServer((req, res) => res.end('Hello from Shahil VPS!')).listen(8080);" &

    PS1='\033[1;32m\u@\033[1;34mShahil_Free_VPS:\033[1;36m\w\033[0m$ '

    echo -e "\033[1;35mShahil Free VPS [ $(date '+%H:%M:%S') ] $USER@shahil:~#\033[0m"
    read -p "localhost:8080: " cmd
    if [[ $cmd == "exit" ]]; then
        echo -e "\033[1;31mGoodbye from Shahil Free VPS!\033[0m"
        break
    else
        eval "$cmd"
    fi

    sleep 1
done
