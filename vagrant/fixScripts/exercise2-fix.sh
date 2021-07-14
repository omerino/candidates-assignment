#!/bin/bash
#add fix to exercise2 here

### hosts files was confiugred that www.ascii-art.de points to server1, hosts files has priority over dns query therefor we didn't got the answer we wanted ###

sudo sed -i 's/127.0.0.1 www.ascii-art.de/ /g' /etc/hosts

curl http://www.ascii-art.de/ascii/ab/007.txt


