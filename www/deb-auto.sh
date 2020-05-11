#!/bin/bash
date="date -I"
backupdir="$PWD/backup/$date"
echo "Would you like to backup your current configuration? [Y/n]"
read userin

if [[ $userin = "Y" ]]
then 
mkdir -p $backupdir
echo "Backing up old files to $backupdir"
else
echo "Your files are being overwritten"
fi