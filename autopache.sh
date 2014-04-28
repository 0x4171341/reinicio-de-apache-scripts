#!/bin/bash

export process=$(ps -ef | grep -v grep | wc -l)

echo "Procesos: $process"

if [ $process -gt 50 ];then
while [ $process -ne 0 ];
do
clear
echo 'El número de procesos es mayor de 90'
echo '1.Iniciar Apache'
echo '2.Parar Apache'
echo '3.Reiniciarlo'
echo '0.Salir'
echo 'Introduce una opción: '
read opcion
case $opcion in
1)
service httpd start && sleep 3;;
2)
service httpd stop && sleep 3;;
3)
service httpd restart && sleep 3;;
0)
echo 'servapa' && break ;;
*)
echo 'Debes introducir una opcion válida'
esac
done
else
echo 'El número de procesos es menor de 90'

fi
