#!/bin/bash
#use: curl https://raw.githubusercontent.com/zgfh/test/master/play-with-k8s.com.sh|sh -s -- ngrok_token 
#I want a shell for test
ngrok_token=$1
rm -rf ngrok.zip ngrok
yum -y install -qqy openssh-server openssh-clients unzip wget curl htop
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip
unzip ngrok.zip
./ngrok authtoken $ngrok_token
./ngrok tcp 22

