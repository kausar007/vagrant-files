#!/bin/bash
echo "Installing Java"
sudo yum install -y java-1.7.0-openjdk
echo "Creating Jenkins repository"
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
echo "Installing Jenkins"
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
