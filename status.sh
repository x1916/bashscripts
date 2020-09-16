#/bin/bash/
#
# display status of EC2
#
clear
echo "Server Uptime:"
uptime

echo "************** APACHE LOGS ***************"
apache2ctl -S
sudo service apache2 status

#Display version
echo "Installed Django version: "
python3 -m django --version

echo "External IP Address: "
dig +short myip.opendns.com @resolver1.opendns.com
