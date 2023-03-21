#!/bin/bash

echo "---Criando Grupos, Usuarios e Pastas.---"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

#Usuarios ADM
useradd maria -c "Maria Eduarda" -m -s /bin/bash
useradd carlos -c "Carlos Eduarda" -m -s /bin/bash
useradd joao -c "Joao Paulo" -m -s /bin/bash

#usuarios VEN
useradd debora -c "Debora Cavalcante" -m -s /bin/bash
useradd sebastiana -c "Sebastiana Dutra" -m -s /bin/bash
useradd roberto -c "Roberto da silva" -m -s /bin/bash

#Usuarios SEC
useradd josefina -c "Josefina Souza" -m -s /bin/bash 
useradd amanda -c "Amanda Aragao" -m -s /bin/bash
useradd rogerio -c "Rogeio Monte" -m -s /bin/bash

gpasswd -M carlos,maria,joao GRP_ADM
gpasswd -M debora,sebastiana,roberto GRP_VEN
gpasswd -M josefina,amanda,rogerio GRP_SEC

chown root:GRP_ADM /adm/
chown root:GRP_SEC /sec/
chown root:GRP_VEN /ven/

echo "---Aplicando permissões nas pastas.---"

chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "---Fim...---"
