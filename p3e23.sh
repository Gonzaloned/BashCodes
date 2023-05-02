#!/bin/bash
arreglo=()

imprimirPares(){
echo los numero pares son:
for num in ${arreglo[*]}
do
	esPar=$(($num % 2))
	if [ $esPar -eq 0 ]; then
		echo $num
	fi
done
}


echo ingrese numero
read ingresado
while [ $ingresado -ne 0 ]
do
	arreglo=(${arreglo[*]} $ingresado)
	read ingresado
done
imprimirPares