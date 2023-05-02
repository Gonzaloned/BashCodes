#!/bin/bash
pila=()
dl=0
pop(){
	ult=$(($dl-1))
	echo el elemento retirado es ${pila[$ult]}
	unset pila[$ult]
	dl=$(( $dl - 1 ))
}

push(){
	echo ingrese numero a ingresar a pila
	read num
	pila=(${pila[*]} $num)
	dl=$(( $dl + 1 ))
}

length(){
	echo La cantidad de elementos es $dl
}

print(){
	echo ${pila[*]}
}

salir(){
	exit 0
}

while true
do
	echo ingrese operacion push,pop,print,length o salir:
	read operacion
	$operacion 
done

