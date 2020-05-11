date="date -I"
backupdir="$PWD/backup/$date"
read -p "Would you like to backup your current configuration? [Y/n]" answer

if [ $answer -eq "Y" ]
then 
mkdir -p $backupdir
echo "Backing up old files to $backupdir"
else
echo "Your files are being overwritten"