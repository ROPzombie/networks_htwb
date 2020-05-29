#!/bin/bash

echo -e '\e[32mResseting to default hosts config'
echo 'This script resets your current /etc/hosts to its default.'
echo 'Are you sure to reset to /etc/hosts? [y/n]'
read answer
if [[ $answer == 'n' ]]; then
    echo '... return to shell'
    exit 0
else
    echo -e '\e[91m....Checking for root previleges....'
    if [[ $(id -u) == 0 ]]; then
        echo 'Start resetting... get old onfig back'
        cp /etc/hosts_backup /etc/hosts
    else
        echo -e '\e[31mError: No root preveligdes! Try running with sudo!'
    exit 1
    fi
fi
