#!/bin/sh
# Tested on Ubuntu 16.04LTS/18.04LTS
echo 'export PS1="\[\e[34;1m\]\w\[\e[m\]$ "' >> ~/.profile
. ~/.profile

sudo timedatectl set-timezone Asia/Tokyo

#Ubuntusパッケージの更新とDocker環境等喉のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
 apt-transport-https \
 ca-certificates \
 curl \
 software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable"
sudo apt -y update
sudo apt -y install docker-ce
sudo usermod -aG docker vagrant
sudo apt -y install docker-compose

#Goのインストール
sudo apt -y install golang

#node.jsとnpmのインストール
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash - 
sudo apt -y install nodejs
sudo apt -y install npm

#コンパイラー関連のインストール
sudo apt -y install make gcc g++ libtool

echo "Done.  May want to logout and login again to enable prompt changes and usermods"


