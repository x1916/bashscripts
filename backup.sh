#!/bin/bash

# Script to perform backup of file system.
# Exludes the backup tarball and the one-file-system flag directories.

# If number of arguments is 1 then offer to create new cron job. Otherwise we run the script.

if [ $# -eq 1 ]

then

read -r -p "Create new Cron backup job? (y/N)?" input

case $input in
	[yY][eE][sS]|[yY])

	cat <(crontab -l) <(echo "0 0 * * * backup.sh") | crontab -
break
;;
	[nN][oO]|[nN])
break
;;
	*)
echo "Invalid input..."
;;
esac
fi

sudo mkdir backup
sudo tar -cvpzf backup/$(date -I)-backup.tar.gz --exclude=backup/*-backup.tar.gz --one-file-system / 

find backup/ -type f -iname "*-backup.tar.gz" -mtime +5 -delete

