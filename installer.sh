#!/bin/sh
# Author : DeveloperFromThinkitive

# sudo apt-get update
sudo apt-get install git -y
sudo apt-get install python3-pip --fix-missing -y
sudo apt-get install python3-setuptools -y
sudo apt-get install dnsutils -y
sudo apt-get install libqmi-utils -y
sudo apt-get install udhcpc -y

HEADER='\033[41m'
COLOR='\033[44m'
RESET='\033[m'
DIR="$( cd "$( dirname "$0" )" && pwd )"

echo -e "${HEADER}##########################################################${RESET}"
echo -e "${HEADER}### Launching StandAlone  Beta Installer                ${RESET}"
echo -e "${HEADER}##########################################################${RESET}"
echo -e  ""
echo -e "${COLOR}### Task 1 - Creating Necessory Folders.${RESET}"

echo -e "${COLOR}### Task 2 - Downloading Stand Alone Beta software to temporary directory...${RESET}"
sudo git clone https://github.com/ravihembadethin/standalonebeta.git -P /tmp

echo -e "${COLOR}### Task 3 - Extracting Custom Image Files...${RESET}"
sudo rm /usr/local/bin/sharky/dist/pty


echo -e "${COLOR}### Task 4 - Copping Stand Alone Builder For Custom Linux Software...${RESET}"
sudo cp /tmp/standalonebeta/dist/pty /usr/local/bin/sharky/dist/pty


echo -e "${COLOR}### Task 5 - Copping Stand Alone Service...${RESET}"
sudo cp -v /tmp/standalonebeta/pty.service  /etc/systemd/system
sudo systemctl enable pty.service
sudo systemctl start pty.service
echo -e "${COLOR}### Task 6 - That escalated quickly, cleaning up temporary installer files.${RESET}"
sudo rm -rf /tmp/standalonebeta

echo -e "${COLOR}###########################################################${RESET}"
echo -e "${COLOR}### Stand Alone Software Installed Successfully     ${RESET}"
echo -e "${COLOR}###########################################################${RESET}"

echo -e "${COLOR}###########################################################${RESET}"
echo -e "${COLOR}### Rebooting the system to apply necessory changes        ${RESET}"
echo -e "${COLOR}###########################################################${RESET}"