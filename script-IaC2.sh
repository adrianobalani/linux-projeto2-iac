#!/bin/bash

echo "Atualizando o Servidor:"
apt-get update
apt-get upgrade -y
echo "Concluido!"

echo "Instalando o Apache:"
apt-get install apache2 -y
apt-get install unzip -y
echo "Concluido!"

echo "Baixando e instalando a aplicação:"

cd /tmp
wget https://github.com/adrianobalani/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



