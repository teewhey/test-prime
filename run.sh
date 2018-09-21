#!/bin/bash

vagrant up
vagrant ssh deploy -c "cd /tmp; wget http://releases.ubuntu.com/18.04/ubuntu-18.04.1-live-server-amd64.iso; tar cvzf ubuntu-18.04.1-live-server-amd64.iso.tar.gz ubuntu-18.04.1-live-server-amd64.iso; scp -o StrictHostKeyChecking=no -i /vagrant/keys/id_rsa ubuntu-18.04.1-live-server-amd64.iso.tar.gz testing@192.168.33.20:~"
