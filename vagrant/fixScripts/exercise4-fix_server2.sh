#!/bin/bash
#add fix to exercise4-server2 here

### we need to add server1 and its ip to the hosts file and allow password authentication in the ssh config file ###

sudo sed -i '$ a 192.168.100.10 server1' /etc/hosts 
sudo sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords yes/g' /etc/ssh/sshd_config
sleep 5

sudo systemctl restart sshd
