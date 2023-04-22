#!/bin/bash
if [ $# -ne 1 ]
then
	echo no se ingreso nombre de archivo
	exit 1
fi
if [ -e $1 ]; then
	if [ -d $1 ]; then
		echo el nombre de archivo ingresado es un directorio
	else
		echo el nombre de archivo ingresado es un archivo
	fi
else
	mkdir $1
	echo se ha creado el archivo $1
fi
exit 0