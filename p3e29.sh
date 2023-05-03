#!/bin/bash

docs=(`find /home -name "*.sh"`)


buscarIndice(){
	indice=0
	while [ ${docs[$indice]} != $1 ] && [ $indice -le ${#docs[*]} ]; do
		indice=$(($indice+1))
	done
	if [ ${doct[$indice]} == $1 ]; then
		echo se encontro el indice
		return 1
	else
		echo no se contro el buscarIndice
		return 0
	fi
}

verArchivo(){
	buscarIndice
	esta=$?
	echo esta es $esta
	if [ $esta ]; then
		cat $1
	else
		echo archivo no encontrado
		exit 5
	fi
}

cantArchivos(){
	echo la cantidad de archivos es ${#docs[*]}
}

borrarArchivo(){	
	buscarIndice
	esta=$?
	if [ $esta ]; then
		echo desea borrar logicamente? Y/N
		read ans
		if [ $ans == "N" ]; then
			`rm $1`
		fi
		unset docs[$indice]
	else
		echo Archivo no encontrado
		exit 10
	fi
}

while true
do
	echo ingrese opcion
	read accion
	$accion
done