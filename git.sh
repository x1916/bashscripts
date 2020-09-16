# script to add everything in folder to github repository

sudo git --version
sudo git config --global user.name "x1916"
sudo git config --global user.email "x19164131@student.ncirl.ie"
sudo git remote -v

#git remote add origin https://github.com/x1916/bashscripts

echo "Please enter Github URL:"
read giturl

git clone $giturl

git remote add origin $giturl

sudo git add *.*
timevalue=$(date)
echo $timevalue
sudo git commit -m "update $timevalue"
#sudo git remote add bashscripts https://github.com/x1916/bashscripts.git
#sudo git pull bashscripts master
#sudo git push bashscripts master
