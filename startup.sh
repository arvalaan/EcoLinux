#!/bin/sh
set -e

# Install / Update Eco Global Survival Game
echo -e "\e[42mInstalling Eco Global Survival\e[0m"
./steamcmd.sh +login $STEAM_USERNAME $STEAM_PASSWORD +force_install_dir /opt/steamcmd/steamapps/EcoServer +app_update $APP_ID validate +quit

# Replace Config Values
echo -e "\e[42mReplacing Config Values\e[0m"
cd /opt/steamcmd/scripts
chmod a+x overwrite-config.sh
./overwrite-config.sh

# Start Eco Global Survival Server
echo -e "\e[42mStarting Server...\e[0m"
cd /opt/steamcmd/steamapps/EcoServer
mono EcoServer.exe -nogui
echo -e "\e[42mServer successfully started!\e[0m"