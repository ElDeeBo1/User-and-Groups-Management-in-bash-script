#!/bin/bash

GROUP=$(whiptail --inputbox "Enter group name" 10 50 3>&1 1>&2 2>&3)

if getent group "$GROUP" &>/dev/null; then
    
   if  groupdel "$GROUP"; then 

        whiptail --msgbox "Group deleted successfully" 10 40
    else
        whiptail --msgbox "Error deleting group" 10 40
    fi
else
    whiptail --msgbox "Group not found" 10 40
fi

