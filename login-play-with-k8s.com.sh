#!/bin/bash
#use: curl https://raw.githubusercontent.com/zgfh/test/master/login-play-with-k8s.com.sh|sh -s -- ngrok_token 
#I want a shell for test
ngrok_token=$1
rm -rf ngrok.zip ngrok
yum -y install -qqy openssh-server openssh-clients unzip wget curl htop
cat >.ssh/authorized_keys<<-EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCXGo3MNUjWE9OqU8LAHv84iBTFspNl8aaotaFFsXV5j2USZlMqhL2IwtkylO5rNfF3pvZGcDT17Icf94pKqrac3T+GFFjXdynaLR6P+5wDeQnZRj9RQSDJHzg29HwoRlf3MrNdvW84RjatXk/FRJaJlLnaUmh08oRb6NoJRXrUmm3ZSJX58HNKJu7rUq1ExV9nPnRFBgBi0tp14DciZ4RFwb8ZUl0LE3gYGDXQO1RYDIgIcebnm2JAy/VpktH+3PwPvA4dibtdCPh0ZAcXeaY3lX57aROdjlzDKnXc2zidnKKRAgFp9fB0lpLJmQ42M/9WykC0cLB3VBS2HzPVxNfj test@zzg
EOF
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip
unzip ngrok.zip
./ngrok authtoken $ngrok_token
./ngrok tcp 22
