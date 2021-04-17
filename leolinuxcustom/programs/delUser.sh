#!/bin/sh

echo "DELETE USER SEQUENCE"
echo " "

echo "WARNING: THIS IS A ADMIN-LEVEL PROGRAM AND SHOULD BE USED WITH EXTREME CAUTION!"
echo " "

echo "YOU HAVE BEEN WARNED!"
echo " "

read -p "Name of User To Delete: " name
echo " "

read -p "Are You Sure (Y/N)?: " check

if [ $check == 'Y' ]
then
	sudo userdel $name --remove
else
	echo " "
	echo "User $name NOT Deleted"
	read -p "Please Type \"confirm\": " confirm
	if [ $confirm == "confirm" ]
	then
		break
	fi
fi

echo " "
echo "Have a nice day!"
