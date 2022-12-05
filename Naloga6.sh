#!/bin/bash

mkdir Desktop
mkdir Documents
mkdir Downloads
mkdir Pictures
mkdir Videos
for a in 1 2 3 4 5
do
mkdir folder$a
done
for a in 1 2 3 4 5
do
sudo useradd user$a --groups sudo
done
sudo apt-get upgrade
sudo apt-get update
sudo apt install ufw
sudo apt install git
sudo apt install nginx
sudo apt install net-tools
sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


