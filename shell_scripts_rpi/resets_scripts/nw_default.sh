#!/bin/bash
RED='\033[0;31m'

echo -e '\e[32mResseting to default with dhcpcd running'
echo 'Be careful, this script runs with root previleges!'
echo 'Are you sure to reset to default? [y/n]'
read answer
if [[ $answer == 'n' ]]; then
    echo '... return to shell'
    exit 0
else
    echo -e '\e[91m....Checking for root previleges....'
    if [[ $(id -u) == 0 ]]; then
        echo 'Start resetting...'
        echo 'Stop networking daemon...'
        systemctl stop networking.service
        echo 'Disabling networking service'
        systemctl disable networking.service
        echo 'Enabling dhcpcd...'
        systemctl enable dhcpcd
        echo 'System is set to default, running dhcp client daemon...'
    else
        echo -e '\e[31mError: No root preveligdes! Try running with sudo!'
    exit 1
    fi
fi

echo -e '\e[0mRebooting system? [y/n]'
read answer
if [[ $answer == 'y' ]]; then
    echo -e '\e[33mRebooting now!'
    reboot
else
    echo '... return to shell'
    exit 0
fi
