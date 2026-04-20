#!/bin/bash

GROUP=$(whiptail --inputbox "Enter group name" 10 50 3>&1 1>&2 2>&3)

if getent group "$GROUP" &>/dev/null; then
    whiptail --msgbox "Group already exists" 10 40
else
    groupadd "$GROUP"

    if [ $? -eq 0 ]; then
        whiptail --msgbox "Group created successfully" 10 40
    else
        whiptail --msgbox "Error creating group" 10 40
    fi
fi
