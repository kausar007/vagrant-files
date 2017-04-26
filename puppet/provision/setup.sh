#!/bin/bash
sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum install -y puppet-agent
sudo echo 'modulepath = ./modules:$basemodulepath:/vagrant/modules' >> /etc/puppetlabs/code/environments/production/environment.conf
sudo sed -i -e 's/:datadir:/:datadir: \/vagrant\/hieradata/g' /etc/puppetlabs/puppet/hiera.yaml
