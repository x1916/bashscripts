#!/bin/bash

echo ""
echo "*** Script to migrate and run server on port 8000. Remember to open port 8000 ***"
echo ""

sudo python3 /var/www/html/CloudProject/CloudCA/Web-App-CA3/manage.py migrate
sudo python3 /var/www/html/CloudProject/CloudCA/Web-App-CA3/manage.py makemigrations
sudo python3 /var/www/html/CloudProject/CloudCA/Web-App-CA3/manage.py runserver 0.0.0.0:8000
