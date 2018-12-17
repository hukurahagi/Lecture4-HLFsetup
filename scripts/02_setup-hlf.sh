#!/bin/sh

mkdir fabric
cd fabric

#Hyperledger Fabric環境のインストール
sudo curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/release-1.2/scripts/bootstrap.sh | bash

#パス設定
echo 'export PATH=$PATH:$HOME/scripts/fabric/fabric-samples/bin' >> ~/.profile

cd $HOME

