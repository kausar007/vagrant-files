#!/bin/bash
sudo cp /vagrant/provision/nginx.repo /etc/yum.repos.d/nginx.repo
sudo yum install -y nginx
sudo rm -f /usr/share/nginx/html/*
sudo git clone https://github.com/kausar007/kausar007.github.io.git /usr/share/nginx/html
sudo systemctl enable nginx
sudo systemctl start nginx
