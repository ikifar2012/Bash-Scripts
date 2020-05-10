date="date -I"
read -p "Would you like to backup your current configuration? [Y/n]" answer

if [[$answer]]

mkdir -p $PWD/backup/$date
echo "Backing up old files to $PWD/backup/$date"
