#!/bin/bash

USER=$(whiptail --inputbox "Enter  username" 10 50 3>&1 1>&2 2>&3)

if id "$USER" &>/dev/null; then
    usermod -L "$USER" 

    whiptail --msgbox "User Disabled successfully" 10 40
else
    whiptail --msgbox "Error Disabling  user" 10 40
fi
~
~
~

