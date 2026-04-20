#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter username" 10 50 3>&1 1>&2 2>&3)

if id "$USERNAME" &>/dev/null; then
    
    userdel -r "$USERNAME"

    if [ $? -eq 0 ]; then
        whiptail --msgbox "User deleted successfully" 10 40
    else
        whiptail --msgbox "Error deleting user" 10 40
    fi

else
    whiptail --msgbox "User does not exist" 10 40
fi
