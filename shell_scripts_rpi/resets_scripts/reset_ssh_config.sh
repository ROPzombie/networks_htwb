#!/bin/bash

echo -e '\e[32mResseting to default ssh config'
echo 'This script resets your current ssh config
in /etc/ssh/ to its default values'
echo 'Are you sure to reset to /etc/ssh/ssh_config? [y/n]'
read answer
if [[ $answer == 'n' ]]; then
    echo '... return to shell'
    exit 0
else
    echo -e '\e[91m....Checking for root previleges....'
    if [[ $(id -u) == 0 ]]; then
        echo 'Start resetting... get old onfig back'
        cp /etc/ssh/ssh_config_backup /etc/ssh/ssh_config
    else
        echo -e '\e[31mError: No root preveligdes! Try running with sudo!'
    exit 1
    fi
fi
