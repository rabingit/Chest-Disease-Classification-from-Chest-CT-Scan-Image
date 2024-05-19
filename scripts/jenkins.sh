#!bin/bash

sudo apt update 

sudo apt install openjdk-8-jdk -y

https://pkg.jenkins.io/
https://pkg.jenkins.io/debian-stable/

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl status jenkins



## Installing Docker

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker $USER

sudo usermod -aG docker jenkins


newgrp docker

sudo apt install awscli -y [this did'nt work]


sudo apt-get install python3-pip
sudo pip install awscli[this did not work]
see:
https://medium.com/@MosesSoftEng/aws-install-aws-cli-in-ubuntu-bfb25da8b759
sudo apt install unzip
cd /tmp
# Install AWS CLI.
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

sudo usermod -a -G docker jenkins


## AWS configuration & restarts jenkins

aws configure


## Now setup elastic IP on AWS



## For getting the admin password for jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

http://3.211.51.108:8080/
pwd: bdd0081f41a34db68549fa89c0ba4978

## Display jenkins files
sudo ls /var/lib/jenkins/secrets

## Jenkins token
113c53e071333580265ee34b0ef0438d0e
