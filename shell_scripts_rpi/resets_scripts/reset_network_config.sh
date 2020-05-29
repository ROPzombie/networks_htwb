#!/bin/bash

echo -e '\e[32mResseting to default network config'
echo 'This script resets your current network config
in /etc/network/interfaces to its default values'
echo 'Are you sure to reset to /etc/network/interfaces? [y/n]'
read answer
if [[ $answer == 'n' ]]; then
    echo '... return to shell'
    exit 0
else
    echo -e '\e[91m....Checking for root previleges....'
    if [[ $(id -u) == 0 ]]; then
        echo 'Start resetting... get old onfig back'
        cp /etc/network/interfaces_backup /etc/network/interfaces
    else
        echo -e '\e[31mError: No root preveligdes! Try running with sudo!'
    exit 1
    fi
fi