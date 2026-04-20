#!/bin/bash

cut -d: -f1 /etc/passwd > /tmp/users.txt

whiptail --title "Users List" --textbox /tmp/users.txt 20 50
