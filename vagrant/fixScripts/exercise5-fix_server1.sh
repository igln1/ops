#!/bin/bash
#add fix to exercise5-server1 here
apt-get -y install sshpass
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@server2
