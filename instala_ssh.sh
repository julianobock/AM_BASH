#Programa feito por Juliano Bock da Silva do curso de Redes de Computador da Alcides Maya.
#Programa tem como finalidade instalar SSH e Configurar usando o editor de texto Nano.



#!/bin/bash

#Comando utilizado para instalar o SSH
apt-get install openssh-server

#pausa o script até que o ENTER seja pressionado
read pause

#Abre com a ferramenta "nano" o arquivo de configuração do SSH.
nano /etc/ssh/sshd_config
/etc/init.d/ssh start
