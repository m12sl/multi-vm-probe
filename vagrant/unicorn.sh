#!/bin/bash

sudo apt-get install -y nginx

# build tools
sudo apt-get install -y build-essential
sudo apt-get install -y cmake

# boost
#sudo apt-get install -y libboost-dev
#sudo apt-get install -y libboost-python-dev

# python tools
sudo apt-get install -y python-dev python-setuptools python-pip
sudo apt-get install -y cython

# venv
sudo pip install virtualenv

cd /vagrant/unicorn-frontend
virtualenv flaskbox
flaskbox/bin/pip install -r requirements.txt



