#!/bin/bash
#add fix to exercise4-server1 here

### we need to add each server ip and dns name to each hosts file on the crosponding server and permit password authentication in ssh config file###
 
sudo sed -i '$ a 192.168.100.11 server2' /etc/hosts
sudo sed -i 's/PasswordAuthentication no /PasswordAuthentication yes/g' /etc/ssh/sshd_config
sleep 5

sudo systemctl restart sshd



