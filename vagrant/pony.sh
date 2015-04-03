#!/usr/bin/env bash

# build tools
sudo apt-get install -y build-essential
sudo apt-get install -y cmake

# boost
sudo apt-get install -y libboost-dev
sudo apt-get install -y libboost-python-dev

# python tools
sudo apt-get install -y python-dev python-setuptools python-pip
sudo apt-get install -y cython

# rabbitmq-server
sudo apt-get install -y rabbitmq-server

# venv
sudo pip install virtualenv

#cd /vagrant/pony-backend
#
#su vagrant
#virtualenv venv
#venv/bin/pip install -r requirements.txt
#venv/bin/celery -A tasks worker --loglevel=info
