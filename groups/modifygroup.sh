#!/bin/bash

OLDGROUP=$(whiptail --inputbox "Enter current group name" 10 50 3>&1 1>&2 2>&3)


if ! getent group "$OLDGROUP" &>/dev/null; then
    whiptail --msgbox "Group does not exist!" 10 40
    exit 1
fi

NEWGROUP=$(whiptail --inputbox "Enter new group name" 10 50 3>&1 1>&2 2>&3)


groupmod -n "$NEWGROUP" "$OLDGROUP"

if [ $? -eq 0 ]; then
    whiptail --msgbox "Group renamed successfully to $NEWGROUP" 10 50
else
    whiptail --msgbox "Failed to modify group" 10 40
fi
