#!/bin/bash
if [ $# -ne 1 ];then
	echo no se igreso nombre de directorio
	exit 1
fi
if ! [ -d $1 ]; then
	echo el nombre pasado por parametro no es un directorio
	exit 4
fi

sub=$(ls $1)
cant=0
for elem in $sub; do
	if [ -f $elem ]; then
		if [ -r $elem ] && [ -w $elem ]; then
			echo elemento $elem es un archivo y se tiene permisos de rw
			cant=$(($cant+1))
		fi
	fi
done

echo la cantidad de archivos con permisos rw es $cant