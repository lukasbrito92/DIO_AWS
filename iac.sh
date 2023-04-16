#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados com sucesso!"

echo "Criando grupo de usuários...."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso!"

echo "Criando usuários e definindo seus grupos...."
useradd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd admin)
useradd maria -m -c "Maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd admin)
useradd joao -m -c "João" -s /bin/bash -G GRP_ADM -p $(openssl passwd admin)
useradd debora -m -c "Débora" -s /bin/bash -G GRP_VEN -p $(openssl passwd admin)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd admin)
useradd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd admin)
useradd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd admin)
useradd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd admin)
useradd rogerio -m -c "Rogério" -s /bin/bash -G GRP_SEC -p $(openssl passwd admin)
echo "Usuários criados com sucesso!"

echo "Definindo grupos de diretórios...."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Grupos de diretórios definidos com sucesso!"

echo "Definindo permissões de usuários..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões definidas com sucesso!"
