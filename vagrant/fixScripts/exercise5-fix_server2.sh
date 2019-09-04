#!/bin/bash
#add fix to exercise5-server2 here
apt-get -y install sshpass
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
#ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
#chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
#chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
#sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@server1 -P 2122
sshpass -p vagrant ssh vagrant@192.168.100.10 'cat /home/vagrant/.ssh/id_rsa.pub' | tee -a /home/vagrant/.ssh/authorized_keys
