#!/bin/bash
RED="\e[31m"
ENDCOLOR="\e[0m"

echo -e "\033[33;5m-----------------------------------------------------------\033[0m"
echo    "                 RECONHECIMENTO WEB                                         "
echo -e "\033[33;5m-----------------------------------------------------------\033[0m"
echo -e "   Modo de uso - site ext: php, js, txt, ...                               "
echo -e "\033[33;5m-----------------------------------------------------------\033[0m"
echo    "exemplo: site.com php                                                       "
echo    "contato: matheuspgblanco@hotmail.com                                        "
echo -e "\033[33;5m-----------------------------------------------------------\033[0m"
for palavra in $(cat lista)
do
resposta=$(curl -s -H "User-Agent: desectool" -o /dev/null -w "%{http_code}" $1/$palavra/)
if [ $resposta == "200" ]
then
echo "Diretorio encontrado: $1/$palavra/"
fi
done
echo -e "\033[31;5m-----------------------------------------------------------\033[0m"
for palavra in $(cat lista)
do
resposta=$(curl -s -H "User-Agent: Desec-Tool" -o /dev/null -w "%{http_code}" $1/$palavra.$2)
if [ $resposta == 200 ]
then
echo "Arquivo encontrado: $1/$palavra.$2"
fi
done
echo -e "\033[33;5m-----------------------------------------------------------\033[0m"
 
