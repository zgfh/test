#!/bin/bash
#use: curl me|sh - ngrok_token 
#I want a shell for test
ssh_user=$1
$=$2
yum -y install -qqy openssh-server openssh-clients unzip wget curl htop
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip
unzip ngrok.zip
./ngrok authtoken VNxHCj6uiFLVRtGqSQfJ_5MjSgTcxoBFjxKE1ff21H
./ngrok tcp 22

