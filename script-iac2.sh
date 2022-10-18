#!/bin/bash


echo "atualizando servidor"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/Joclelsonr/landingpage/archive/refs/heads/master.zip
unzip master.zip
cd landingpage-master
cp -R * /var/www/html/
