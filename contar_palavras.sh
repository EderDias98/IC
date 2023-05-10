#!/bin/bash

#Para funcionar o terminal tem que estar aberto na pasta aTribuna-21dir

find -name "*.txt" > enderecos

arquivo="enderecos"
cont=0
qtd_l=0

while IFS= read -r linha || [[ -n "$linha" ]]; do
	
	qtd_l=$(wc -w < $linha)
	cont=$(($cont + $qtd_l))
done < "$arquivo"

echo "$cont"

