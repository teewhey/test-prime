#!/bin/bash

vagrant up
vagrant ssh deploy -c "cd /tmp; wget http://releases.ubuntu.com/16.04/ubuntu-16.04.4-server-i386.iso; tar cvzf ubuntu-16.04.4-server-i386.iso.tar.gz ubuntu-16.04.4-server-i386.iso; scp -o StrictHostKeyChecking=no -i /vagrant/keys/id_rsa ubuntu-16.04.4-server-i386.iso.tar.gz testing@192.168.33.20:~"
