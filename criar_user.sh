#!/bin/bash

echo "Automatizando criação de usuários"
#cont=0
#while [$cont -lt 3]; do
#
#	useradd guest$cont -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd senha123);
#	passwd guest -e;
#	let cont=cont+1;
#	echo "usuário criado"
#done

for i in 1 2 3; do
	useradd guest$i -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd senha123);
	passwd guest -e;
	echo "usuário criado"
done


