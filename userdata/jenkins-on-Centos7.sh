https://raw.githubusercontent.com/devopshydclub/vprofile-project/ci-jenkins/userdata/jenkins-setup.sh

#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install maven -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
###



Below steps are for installing jenkins on Centos/7


#!/bin/bash
sudo yum update -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install maven -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo > /dev/null
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum update -y
sudo yum install jenkins
#####
