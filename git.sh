#/bin/bash

# script to add everything in folder to github repository

sudo git --version
sudo git config --global --rebase user.name "x1916"
sudo git config --global --rebase user.email "x19164131@student.ncirl.ie"
sudo git remote -v

#git remote add origin https://github.com/x1916/bashscripts

read -r -p "Clone New Github Repository? (y/N)?" input

case $input in
	[yY][eE][sS]|[yY])

	echo "Please enter Github URL:"
	read giturl

	git clone $giturl

	git remote add origin $giturl
break
;;
	[nN][oO]|[nN])
break
;;
	*)
echo "Invalid input..."
;;
esac


# Add all files from directory to repository.

sudo git add *.*

# Name the commits by Date / Time.

timevalue=$(date)
echo $timevalue
sudo git commit -m "Updated $timevalue"

# Finalise the push pull to synchronise.

sudo git pull origin master
sudo git push origin master
