# Trabalho 3 - Juliano Bock da Silva - Redes de Computador
#			   Michael Escouto - Desenvolvimento de Sistemas


#!/bin/bash

# Escrito por Michael Escouto Turma de Sistemas



principal() 

{           # Função principal do programa
    clear               # limpa a tela

    echo "[1] Mostrar a localização atual do usuário no sistema de arquivos"  
    echo "[2] Mostrar o tipo de um arquivo"  
    echo "[3] Criar um diretório"
    echo "[4] Apagar um diretório não vazio"
    echo "[5] ler 2 números e indicar qual é o maior deles e qual é o menor"
    echo "[6] Exibir as últimas linhas de um arquivo"
    echo "[7] Exibir as primeiras linhas de um arquivo"
    echo "[8] Mostrar a localização de um comando específico"
    echo "[9] Mostra um diretório informado pelo usuário em formato de árvore"
    echo "[10] Copiar um arquivo para um outro diretório"
    echo "[11] Mover um arquivo para outro diretório"
    echo "[12] Sair"

    echo
    echo -n "Qual a opcao desejada ? "
    read opcao          # faz a leitura da variável "opcao", 
                        # que será utilizada no comando case
                        # para indicar qual a opção a ser utilizada

                        # caso o valor da variável "opcao"...
    case $opcao in
        1)              # seja igual a "1", então faça as instruções abaixo
            clear
			localizacao_arquivos
		;;                                
        2)
            clear
			mostrar_tipo_arquivo           
		;; 

        3)
            clear
           	criar_diretorio
		;; 
        4)
            clear
			deletar_diretorio		
		;; 
        5)
            clear
			mostra_maior   
		;;
        6)
			clear
			ultimas_linhas
        ;; 
        7)
            clear
			primeiras_linhas
        ;; 
		8)
            clear
			localizar_comando          
		;; 
        9)
            clear
			diretorio_form_arvore
        ;; 
        10)
            clear
			copiar_arquivo
        ;; 
        11)
            clear
           	mover_arquivo
		;; 
		12)
            clear
            exit ;;

        *)              
            clear
            echo "Opcao desconhecida."
            read pause
            principal   
        ;;
    esac
}







localizacao_arquivos() {             # função da opção localização arquivos
    pwd 
    read pause          # usado para pausar a execução do script
    principal           # volta para a função principal
}

mostrar_tipo_arquivo() {             # função informa o que é o arquivo se é um texto ou um shell script por exemplo 
    clear
    echo "digite arquivo"
	read ARQUIVO
	file $ARQUIVO	
    read pause
    principal
}

criar_diretorio() {             # função cria um novo diretorio com o nome que o usuario indicar
    clear
    echo "digite o diretorio que quer criar"
	read DIRETORIO
	mkdir $DIRETORIO
    read pause
	principal	
}

deletar_diretorio() {             # função deleta o diretorio informado pelo usuario
    clear
	echo "digite o diretorio que quer deletar"
	read DIRETORIO
	rm -r $DIRETORIO 	
    read pause
    principal
}

mostra_maior() {             # função o usuario informa dois numeros e a função retorna o maior
    clear
	echo "digite o primeiro numero"
		read NUMERO1
		echo "digite o segundo numero"
		read NUMERO2
		if [ $NUMERO1 -gt $NUMERO2 ]; then
			
			echo "O numero maior é: " $NUMERO1
		else
			echo "O numero maior é: " $NUMERO2
		fi
	read pause
    principal		
    
}

ultimas_linhas() {             # função mostra as ultimas linhas de um texto
    clear
	echo "digite o nome do arquivo"
	read ARQUIVO
	echo "digite a quantidade de linha que quer exibir"
	read LINHAS
	tail -$LINHAS $ARQUIVO
    read pause 
	principal	
}

primeiras_linhas() {             # função mostra as primeiras linhas d um texto
    clear
	echo "digite o nome do arquivo"
	read ARQUIVO
	echo "digite a quantidade de linha que quer exibir"
	read LINHAS
	head -$LINHAS $ARQUIVO
    read pause
	principal	
}

localizar_comando() {             # função informa a localização de um comando
	clear
    echo "Digite o comando"
	read COMANDO
	which $COMANDO 
    read pause          
    principal           
}

diretorio_form_arvore() {             # função informa a localização de um arquivo em formato de árvore
    clear
	echo "Digite o Diretorio"
	read DIRETORIO
	tree $DIRETORIO
    read pause          
    principal           
}

copiar_arquivo() {             # função copia um arquivo para um diretorio informado pelo usuario
    clear
	echo "Digite o arquivo que deseja copiar"
	read ARQUIVO
	echo "Digite para onde deseja copiar o arquivo"
	read LOCAL
	cp $ARQUIVO $LOCAL  
    read pause          
    principal           
}

mover_arquivo() {             # função move um arquivo para um diretorio informado pelo usuario
    clear
    echo "Digite o arquivo que deseja mover"
	read ARQUIVO
	echo "Digite para onde deseja mover mais o nome do arquivo"
	read LOCAL
	mv $ARQUIVO $LOCAL  
    read pause          
    principal            
}

opcao_invalida() {      # função da opção inválida
    clear
    echo "Opcao desconhecida."
    read pause
    principal
}

principal               # o script começa aqui, as funções das linhas anteriores
                        # são lidas pelo interpretador bash e armazenadas em memória.

                        # o bash não tem como adivinhar qual das funções ele deve 
                        # executar, por isto o a execução do script realmente começa
                        # quando aparece uma instrução fora de uma função, neste caso,
# chamando a função principal
