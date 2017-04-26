#!/bin/bash
sudo cp /vagrant/provision/docker.repo /etc/yum.repos.d/docker.repo
sudo yum install -y docker-engine
sudo systemctl enable docker
sudo systemctl start docker
sudo useradd docker -g docker
sudo useradd jenkins
sudo usermod jenkins -aG docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
