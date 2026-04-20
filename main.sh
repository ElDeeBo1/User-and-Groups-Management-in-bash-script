#!/bin/bash

USERS_DIR="./users"
GROUPS_DIR="./groups"

while true
do
CHOICE=$(whiptail --title "System Admin Panel" --menu "Choose option" 25 100 13 \
"1" "Add User" \
"2" "Modify User" \
"3" "Delete User" \
"4" "Change Password" \
"5" "Disable User" \
"6" "Enable User" \
"7" "List Users" \
"8" "Add Group" \
"9" "Modify Group" \
"10" "Delete Group" \
"11" "List Groups" \
"12" "About" \
"13" "Exit" 3>&1 1>&2 2>&3)

if [ -z "$CHOICE" ]; then
    continue
fi

case $CHOICE in

1)
bash "$USERS_DIR/adduser.sh"
;;

2)
bash "$USERS_DIR/modifyuser.sh"
;;

3)
bash "$USERS_DIR/deleteuser.sh"
;;

4)
bash "$USERS_DIR/changepassword.sh"
;;

5)
bash "$USERS_DIR/disableuser.sh"
;;

6)
bash "$USERS_DIR/enableuser.sh"
;;

7)
bash "$USERS_DIR/listuser.sh"
;;

8)
bash "$GROUPS_DIR/addgroup.sh"
;;

9)
bash "$GROUPS_DIR/modifygroup.sh"
;;

10)
bash "$GROUPS_DIR/deletegroup.sh"
;;

11)
bash "$GROUPS_DIR/listgroups.sh"
;;

12)
bash "about.sh"
;;

13)
exit 0
;;

esac

done
