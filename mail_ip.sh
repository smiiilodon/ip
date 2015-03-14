#!/bin/bash

# Get information
IP=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
DATE=`date`

# Write the message
cat << EOF > msg.txt
To: benjamin.hipple@gmail.com chris.hipple@gmail.com inneekim@gmail.com
From: smiiilodon@gmail.com
Subject: $IP

Hello!

It is currently $DATE and I'm writing to let you know that I'm still alive and well.

Yours truly,
Smilodon
EOF

# Mail it
ssmtp benjamin.hipple@gmail.com Chris.Hipple@gmail.com inneekim@gmail.com < /home/smilodon/ip/msg.txt
