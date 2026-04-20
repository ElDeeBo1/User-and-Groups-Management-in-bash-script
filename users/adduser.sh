#!/bin/bash

USER=$(whiptail --inputbox "Enter username" 10 50 3>&1 1>&2 2>&3)
PASSWORD=$(whiptail --inputbox "Enter password" 10 50 3>&1 1>&2 2>&3)

if id "$USER" &>/dev/null; then
    whiptail --msgbox "User already exists!" 10 40
    exit
fi

useradd "$USER"
echo "$PASSWORD" | passwd --stdin "$USER" >/dev/null

if [ $? -eq 0 ]; then
    whiptail --msgbox "User added successfully" 10 40
else
    whiptail --msgbox "Error adding user" 10 40
fi
