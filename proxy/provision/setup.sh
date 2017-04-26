#!/bin/bash
sudo cp /vagrant/provision/nginx.repo /etc/yum.repos.d/nginx.repo
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
