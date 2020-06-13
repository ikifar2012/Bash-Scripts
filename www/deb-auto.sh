#!/bin/bash
date="$(date -I)"
backupdir="$PWD/backup/$date"
read -p "Would you like to backup your current configuration? [Y/n]" userin
userin="$(echo ${userin} | tr '[:upper:]' '[:lower:]')"
if [[ $userin = "y" ]]
then 
mkdir -p $backupdir
echo "Backing up old files to $backupdir"
cp -p /etc/apt/apt.conf.d/50unattended-upgrades $backupdir
cp -p /etc/apt/apt.conf.d/20auto-upgrades $backupdir
echo "Files backed up"
else
echo "Your files are being overwritten"
fi