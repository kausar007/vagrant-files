#!/usr/bin/env bash

echo ubuntu:ubuntu | chpasswd

echo "Installing.."
apt-get install -y software-properties-common
apt-add-repository -y ppa:rael-gc/rvm
apt-get update -y
apt-get install -y rvm

source /etc/profile.d/rvm.sh
rvm install ruby
gem install jekyll

git clone https://github.com/kausar007/kausarbangash.com.git
cd kausarbangash.com
jekyll build
jekyll serve --host 0.0.0.0 --port 8080 --detach
