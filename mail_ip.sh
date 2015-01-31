#!/bin/bash

# setup msg
IP=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

eval "sed -i 's/\(Subject: \).*$/\1$IP/g' /home/smilodon/ip/msg.txt"

# send it
ssmtp benjamin.hipple@gmail.com < /home/smilodon/ip/msg.txt
ssmtp Chris.Hipple@gmail.com < /home/smilodon/ip/msg.txt
ssmtp inneekim@gmail.com < /home/smilodon/ip/msg.txt
