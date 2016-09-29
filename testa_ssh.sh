#Programa feito por Juliano Bock da Silva do curso de Redes de Computador da Alcides Maya.
#Programa tem como finalidade acessar um maquina atravez de SSH e mostrar informações.


#!/bin/bash

#Acessa por ssh uma maquina "10.10.65.127"
ssh aluno@10.10.65.127

#Mostra a versão da distribuição no terminal
cat /etc/*release

#Mostra a frase "Numero de Bits da Maquina"
echo "Numero de Bits da Maquina"

#mostrar a versão completa do kernel e as informações do sistema.
uname -m
