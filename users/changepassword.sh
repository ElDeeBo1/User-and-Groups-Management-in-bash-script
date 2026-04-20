#!/bin/bash

USER=$(whiptail --inputbox "Enter username" 10 50 3>&1 1>&2 2>&3)

if id "$USER" &>/dev/null; then

    PASS1=$(whiptail --passwordbox "Enter new password" 10 50 3>&1 1>&2 2>&3)
    PASS2=$(whiptail --passwordbox "Confirm password" 10 50 3>&1 1>&2 2>&3)

    if [ "$PASS1" = "$PASS2" ]; then
        echo "$USER:$PASS1" | chpasswd

        whiptail --msgbox "Password changed successfully" 10 40
    else
        whiptail --msgbox "Passwords do not match" 10 40
    fi

else
    whiptail --msgbox "User not found" 10 40
fi
