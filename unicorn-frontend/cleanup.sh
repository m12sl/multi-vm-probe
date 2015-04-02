#!/usr/bin/env bash

echo "unicorn cleanup"
echo "remove /vagrant/unicorn-frontend/flaskbox"
rm -rf /vagrant/unicorn-frontend/flaskbox

echo "remove /vagrant/unicorn-frontend/var"
rm -rf /vagrant/unicorn-frontend/var

echo "remove /vagrant/unicorn-frontend/tmp"
rm -rf /vagrant/unicorn-frontend/tmp