#!/bin/bash

OLD_USER=$(whiptail --inputbox "Enter old  username" 10 50 3>&1 1>&2 2>&3)
New_User=$(whiptail --inputbox "Enter new username" 10 50 3>&1 1>&2 2>&3)

if id "$OLD_USER" &>/dev/null; then
    usermod -l "$New_User" "$OLD_USER"
    usermod -d /home/"$New_User"  -m "$New_User"  

    whiptail --msgbox "User modified successfully" 10 40
else
    whiptail --msgbox "Error modifying user" 10 40
fi
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                  
