#!/bin/bash
#add fix to exercise1 here
# Machine was configured with a static route to 208.86.224.90 through 192.168.100.10 which is incorrect #

sudo ip route del 208.86.224.90 dev enp0s8 scope link src 192.168.100.10

curl http://www.textfiles.com/art/bnbascii.txt
