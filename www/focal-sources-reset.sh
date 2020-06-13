#!/bin/bash
date="$(date -I)"
backupdir="$PWD/backup/$date"
echo "This is for Canada only"
read -p "Would you like to backup your current configuration? [Y/n]" userin
userin="$(echo ${userin} | tr '[:upper:]' '[:lower:]')"

overwrite(){
sudo wget https://raw.githubusercontent.com/ikifar2012/Server-Update/master/www/files/ca.focal-sources.list -O /etc/apt/sources.list
}

if [[ $userin = "y" ]]
then 
mkdir -p $backupdir
echo "Backing up old files to $backupdir"
cp -p /etc/apt/sources.list $backupdir/sources.list.$date
echo "Files backed up"
echo "Previous files being overwritten"
overwrite
else
echo "Your files are being overwritten"
overwrite
fi


read -p "Do you want to install the Docker repo? [Y/n]" userin2
userin2="$(echo ${userin2} | tr '[:upper:]' '[:lower:]')"

if [[ $userin2 = "y" ]]
then
echo "Installing the Docker community repo"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
else

fi
echo "Install Complete"
echo "Please Run:"
echo "bash <(curl -sSL https://up.steplock.ca/deb.sh)"