#!/bin/bash
#Iniciem a leitura do livro do primeiro link e mostre como você construiria um código/script #para listar os arquivos em um diretório Linux, em ordem crescente do tamanho do arquivo usando #AWK, invariavelmente.

caminho_da_lista=~/Downloads/

ls -lg $1 | awk '{print $4 " " $8}' | sort -n | awk '{print $2}' > ${caminho_da_lista}ordenados.txt

