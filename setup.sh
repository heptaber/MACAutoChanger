#!/bin/bash

declare SCRIPT_NAME="macchanger.sh"
declare CONFIG="local.macchanger.plist"
declare DAEMONS_PATH="Library/LaunchDaemons"

# set up changing script
cp $SCRIPT_NAME /usr/local/bin
sudo chown root:wheel /usr/local/bin/$SCRIPT_NAME
sudo chmod +x /usr/local/bin/$SCRIPT_NAME

# set up launch config
cp $CONFIG /$DAEMONS_PATH
sudo chown root:wheel /$DAEMONS_PATH/$CONFIG
sudo chmod 0644 /$DAEMONS_PATH/$CONFIG

# load config
sudo launchctl load /$DAEMONS_PATH/$CONFIG

echo "Your current Wi-Fi MAC address is"
ifconfig en0 | awk '/ether/{print $2}'
echo "MAC address will be randomized on every reboot ;-)"
