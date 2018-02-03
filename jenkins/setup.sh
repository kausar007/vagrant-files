#!/bin/bash
echo ubuntu:ubuntu | chpasswd

echo "Adding Jenkins repository"
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list
apt-get update

echo "Installing Jenkins"
apt-get install -y jenkins
systemctl start jenkins
