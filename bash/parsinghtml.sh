#!/bin/bash
if [ "$1" == "" ]
then
	echo " PARSING HTML "
	echo "Mode de uso: $0 SITE"
	echo "Exemplo: site.com.br"
	
else
	echo "#################"
	echo "PARSING HTML"
	echo "#################"
wget 
grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"'	-f 1 |grep -v "<l" > lista
for url in $(cat lista);
do
host $url | grep "has address";
done
fi
