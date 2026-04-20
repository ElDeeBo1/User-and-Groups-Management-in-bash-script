#!/bin/bash

cut -d: -f1 /etc/group > /tmp/groups.txt

whiptail --title "Groups List" --textbox /tmp/groups.txt 20 50
