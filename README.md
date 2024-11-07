
# Shahil Free VPS Script for Termux

**Created by**: Shahil  
**Telegram**: [@Shahil440](https://t.me/Shahil440)  
**Telegram Channel**: [Join here](https://t.me/+565zq0XLr2g1ZjI1)

---

## Description

This script transforms your Termux terminal into a VPS-like environment, complete with support for Node.js, PM2, and essential libraries for building Telegram bots. It’s a great tool for users who want to simulate a VPS on their mobile devices and quickly set up a development environment for Node.js and Telegram bot projects.

## Features

- **Customized Terminal**: Displays a welcome banner and hostname, date, and uptime for a VPS feel.
- **Node.js & PM2**: Installs Node.js, npm, and PM2 globally for running Node.js applications.
- **Telegram Bot Support**: Installs popular libraries such as `telegraf` and `node-telegram-bot-api`.
- **Infinite Loop Prompt**: Keeps a VPS-style prompt active, allowing you to run commands in an interactive session.

## Installation

1. **Update Termux** and **grant storage permissions** (if not already done):
   ```bash
   pkg update && pkg upgrade -y
   ```

2. **Clone the Script**:
   ```bash
  git clone https://github.com/Shahilali5/VPS-ON-TERMUX-IN-FREE
   ```
4. **Install Command**
   ```bash
pkg install figlet toilet
   ```
3. **Make the Script Executable**:
   ```bash
   chmod +x vps_look.sh
   ```

4. **Run the Script**:
   ```bash
   ./vps_look.sh
   ```

## Requirements

- Termux
- Internet connection for downloading packages

## Usage

- After running the script, you will see a custom VPS-like prompt.
- Type any command to execute it as if on a remote VPS.
- Type `exit` to quit the session.

## Included Packages

The following packages are automatically installed:

- **Node.js** - JavaScript runtime
- **npm** - Node package manager
- **PM2** - Process manager for Node.js applications
- **Python** - Often required for additional modules
- **Git** - Version control system
- **figlet** and **toilet** - For styling the banner

Additionally, the script installs Telegram bot libraries:
- **telegraf** - Framework for creating Telegram bots
- **node-telegram-bot-api** - Comprehensive API wrapper for Telegram

---

## Credits

- **Script Developed By**: [Shahil](https://t.me/Shahil440)
- **Join My Telegram Channel for More**: [Click here](https://t.me/+565zq0XLr2g1ZjI1)

--- 

Enjoy the VPS experience on Termux with this customized setup!
