#!/bin/bash

# setup msg
IP=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

eval "sed -i 's/\(Subject: \).*$/\1$IP/g' msg.txt"

# send it
ssmtp benjamin.hipple@gmail.com < msg.txt
