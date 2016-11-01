# monScripts
tool to monitor Linux instance

#Make sure you change the crontab file by writing the follwing command :
crontab -e
#After crontab file opens copy the line in the cronjob file in this repo
#paste it in crontab, right now its configured once every 5 mins.
#Change it to your preference
#Standard time decided : 5 mins
#after logging into the system as root, make a folder tool under root
mkdir /root/tool
#path -> /root/tool
#go to tool
cd tool
#install and initialize git
sudo yum install git
git init
#git clone the repo
git clone https://github.com/SyedSufyan/monScripts.git
