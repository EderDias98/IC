#!/bin/bash

#Baixe o diretorio aTribuna-21dir e coloque ele no diretorio Downloads
curl -o ~/Downloads/aTribuna-21dir.tar.gz http://eliasdeoliveira.com.br/dataSets/aTribuna-21dir.tar.gz
#criar o diretorio
mkdir ~/Downloads/aTribuna-21dir
#extrair o arquivo baixado no diretorio pedido
tar -xzvf ~/Downloads/aTribuna-21dir.tar.gz -C  ~/Downloads/aTribuna-21dir
find ~/Downloads/aTribuna-21dir/ -name "*.txt" > enderecos
exit
arquivo="enderecos"
cont=0
qtd_l=0

while IFS= read -r linha || [[ -n "$linha" ]]; do
	
	qtd_l=$(wc -w < $linha)
	cont=$(($cont + $qtd_l))
done < "$arquivo"

echo "$cont"

#A quantidade de palavras foi de 22203522
