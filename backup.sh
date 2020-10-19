#!/bin/bash

# Script to perform backup of file system.
# Exludes the backup tarball and the one-file-system flag directories.

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


sudo tar -cvpzf $(date -I)-backup.tar.gz --exclude=/*-backup.tar.gz --one-file-system / 

find backup/ -type f -iname "*-backup.tar.gz" -mtime +5 -delete

