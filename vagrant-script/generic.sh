#!/bin/bash

sudo useradd -d /home/testing -G vagrant testing
echo testing:testing | sudo chpasswd
sudo yum install -y wget
sudo mkdir -p /home/testing/.ssh
sudo chown -R testing: /home/testing
sudo su - testing -c "cat /vagrant/keys/id_rsa.pub >> /home/testing/.ssh/authorized_keys"
sudo chmod 600 /home/testing/.ssh/authorized_keys
sudo chmod 400 /vagrant/keys/id_rsa