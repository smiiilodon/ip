#!/bin/bash

# Get information
IP=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
DATE=`date`
RECIPIENTS="benjamin.hipple@gmail.com Chris.Hipple@gmail.com inneekim@gmail.com"

# Write the message
cat << EOF > /home/smilodon/ip/msg.txt
To: $RECIPIENTS
From: smiiilodon@gmail.com
Subject: $IP

Hello!

It is currently $DATE and I'm writing to let you know that I'm still alive and well.

If you'd like to drop by and say hello, I can be found at http://$IP

Yours truly,
Smilodon
EOF

# Mail it
ssmtp $RECIPIENTS < /home/smilodon/ip/msg.txt
