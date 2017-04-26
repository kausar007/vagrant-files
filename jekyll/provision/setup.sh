#!/bin/bash
echo "Installing.."
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby --gems=jekyll,html-proofer
source /usr/local/rvm/scripts/rvm
git clone https://github.com/kausar007/kausarbangash.com.git
cd kausarbangash.com
jekyll build
htmlproofer ./_site
jekyll serve --host 0.0.0.0 --port 8080 --detach