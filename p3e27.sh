#!/bin/bash

inicializar(){
	vector=()
}

agregar_elem(){
	vector=$($vector[*] $1)
}

eliminar_elem(){
	encontrado=0
	indice=0
	while [ encontrado -eq 0]
	do
		echo indice $indice
		if [ ${vector[$indice]} = $1 ]; then
			encontrado=1
		fi
		indice=$(($indice+1))
	done
	if [ $encontrado ];then
		echo se elimina el indice $indice
		unset vector[$indice]
	else
		echo no se encontro el elemento
	fi
}

longitud(){
	echo la longitud es ${#vector[*]}
}

imprimir(){
	echo Los elementos son ${vector[*]}
}

inicializar_Con_Valores(){
	vector=()
	for (i=0;$i<$1;$i++)
	do
		vector=($vector $2)
	done
}

while true
	ingrese