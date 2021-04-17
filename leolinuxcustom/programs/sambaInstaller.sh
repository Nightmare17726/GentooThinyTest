#!/bin/sh
ipVar=0.0.0.0
folderName="ShareToLinux"
echo "What is the IPv4 Address of the Target File Server?"
read ipVar
echo
echo "What is the name of the Shared Folder to connect to?"
read folderName
sudo mkdir /mnt/share
echo
echo "$ipVar --> $folderName"
echo "Mount: //$ipVar//$folderName /mnt/share"
echo "For the next step, if Password-Protected file sharing is OFF, press TAB + ENTER."
echo
sudo mount.cifs //$ipVar/$folderName /mnt/share

