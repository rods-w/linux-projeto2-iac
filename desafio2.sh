#!/bin/bash

echo "Script de Provisionamento de um Servidor Web \n Desafio 2"

#Atualizar
apt update -y
apt upgrade -y

#instalação do servidor apache e unzip
apt install apache2 -y
apt install unzip -y

cd /tmp

#Download do arquivo com os scripts do site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Descompactando o arquivo e copiando para o diretório padrão do apache
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
