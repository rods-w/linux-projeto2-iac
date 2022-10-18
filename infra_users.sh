#!/bin/bash

#criação de diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criação de grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criação de usuários
useradd carlos -m -s /bin/bash -p $(openssl passwd carlos123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd maria123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd joao123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd debora123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd sebastiana123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd roberto123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd josefina123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd amanda123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd rogerio123) -G GRP_SEC

#permissão total para diretorio publico

chmod 777 /publico

#permissão de usuários para cada grupo

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#permissão de leitura,escrita e execução
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Concluído"
