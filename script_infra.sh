#!/bin/bash

echo "Iniciando o setup da infraestrutura..."

# 1. Criar diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# 2. Criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# 3. Criar usuários e adicionar aos grupos
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# 4. Definir senhas padrão (opcional)
echo "Definindo senhas padrão..."
echo "carlos:Senha123" | chpasswd
echo "maria:Senha123" | chpasswd
echo "joao:Senha123" | chpasswd
echo "debora:Senha123" | chpasswd
echo "sebastiana:Senha123" | chpasswd
echo "roberto:Senha123" | chpasswd
echo "josefina:Senha123" | chpasswd
echo "amanda:Senha123" | chpasswd
echo "rogerio:Senha123" | chpasswd

# 5. Aplicar permissões nos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado. Infraestrutura pronta!"
