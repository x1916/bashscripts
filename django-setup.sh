
# Startup Script for installing Django and starting a new project.
# Peter Byrne

dig +short myip.opendns.com @resolver1.opendns.com

read -p "Enter project name: " projname
echo $projname
read -p "Enter app name: " appname

sudo apt update
sudo apt upgrade
sudo apt install python3-venv
sudo apt install python3-pip
sudo apt install python-django-common
sudo apt install python3-django
sudo apt install apache2

#sudo python3 -m venv django
#source django/bin/activate

pip3 install Django

#Display version
python3 -m django --version


django-admin startproject $projname

sudo python3 myblog/manage.py startapp $appname
sudo python3 myblog/manage.py makemigrations
sudo python3 myblog/manage.py migrate
sudo python3 myblog/manage.py runserver 0.0.0.0:8000

