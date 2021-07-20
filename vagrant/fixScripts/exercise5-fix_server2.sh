#!/bin/bash
#add fix to exercise5-server2 here

### Generating ssh key pair
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa >> /dev/null <<< y

### cheking if sshpass is installed ###
if [ "$(which sshpass)" != "" ];
then
        echo "sshpass is installed skipping..."
else
        echo "sshpass isn't installed, please wait installing..."
        sudo apt install sshpass -y >> /dev/null 2>&1
	sleep 10
fi


#sudo apt update -y > /dev/null 2>$1

### allowing public key authentication ###
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config

### disabling host key checking ###
sudo sed -i 's/#StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config

### copy keys to server1 ###
sshpass -p 'vagrant' ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server1 >> /dev/null 2>&1

