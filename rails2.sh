#!/bin/bash
yum install sqlite-devel -y
yum install -y gcc libxml2 libxml2-devel libxslt libxslt-devel
yum install gcc-c++ -y
yum install ruby-devel -y
yum install ruby-irb -y
su ec2-user
cd $HOME
# download and untar rubygems
wget https://rubygems.org/rubygems/rubygems-2.5.1.tgz
tar -xzf rubygems-2.5.1.tgz
cd rubygems-2.5.1
ruby setup.rb
cd ..
gem install bundler
gem install io-console
git clone https://github.com/cvhooper22/462_lab0.git
cd 462_lab0
bundle install
rails server -b 0.0.0.0
