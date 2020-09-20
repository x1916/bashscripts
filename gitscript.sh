# script to add everything in folder to github repository

sudo git config --global user.name "x1916"
sudo git config --global user.email "x19164131@student.ncirl.ie"
sudo git init bashscripts
cp *.sh bashscripts/
cd bashscripts
sudo git add *.*
timevalue=$(date)
echo $timevalue
sudo git commit -m "update $timevalue"
sudo git remote add bashscripts https://github.com/x1916/bashscripts.git
sudo git push bashscripts master
