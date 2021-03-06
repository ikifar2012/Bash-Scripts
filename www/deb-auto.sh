#!/bin/bash
date="$(date -I)"
backupdir="$PWD/backup/$date"
read -p "Would you like to backup your current configuration? [Y/n]" userin
userin="$(echo ${userin} | tr '[:upper:]' '[:lower:]')"

overwrite(){
sudo wget https://raw.githubusercontent.com/ikifar2012/Bash-Scripts/master/www/files/auto-upgrades/20auto-upgrades -O /etc/apt/apt.conf.d/20auto-upgrades
sudo wget https://raw.githubusercontent.com/ikifar2012/Bash-Scripts/master/www/files/auto-upgrades/50unattended-upgrades -O /etc/apt/apt.conf.d/50unattended-upgrades
}

if [[ $userin = "y" ]]
then 
mkdir -p $backupdir
echo "Backing up old files to $backupdir"
cp -p /etc/apt/apt.conf.d/50unattended-upgrades $backupdir
cp -p /etc/apt/apt.conf.d/20auto-upgrades $backupdir
echo "Files backed up"
echo "Previous files being overwritten"
overwrite
else
echo "Your files are being overwritten"
overwrite
fi