#!/bin/bash

echo -e '\e[32mResseting to default sshd config'
echo 'This script resets your current sshd config
in /etc/ssh/ to its default values'
echo 'Are you sure to reset to /etc/ssh/sshd_config? [y/n]'
read answer
if [[ $answer == 'n' ]]; then
    echo '... return to shell'
    exit 0
else
    echo -e '\e[91m....Checking for root previleges....'
    if [[ $(id -u) == 0 ]]; then
        echo 'Start resetting... get old onfig back'
        cp /etc/ssh/sshd_config_backup /etc/ssh/sshd_config
    else
        echo -e '\e[31mError: No root preveligdes! Try running with sudo!'
    exit 1
    fi
fi
