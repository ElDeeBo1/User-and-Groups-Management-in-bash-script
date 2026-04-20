#!/bin/bash
USER=$(whiptail --inputbox "Enter username" 10 50 3>&1 1>&2 2>&3)

if id "$USER" &>/dev/null; then
    usermod -U "$USER"
    whiptail --msgbox "User unlocked successfully" 10 40
else
    whiptail --msgbox "Failed to unlock user" 10 40
fi
