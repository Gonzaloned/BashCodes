#!/bin/bash
if [ $# -ne 1 ]; then
	echo no se ingreso nombre de usuario
	exit 1
fi
while true; do
	esta=`who | grep $1 -c`
	if [ $esta -ge 1 ]; then
		echo el usuario $1 se ha logueado
		exit 0
	fi
	echo no se encontro usuario $1 logueado, esperando 10s
	sleep 10
done