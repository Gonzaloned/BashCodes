#!/bin/bash
if [[ $# -eq 2 ]]
then 
	echo "la multiplicacion es $(( $1 * $2 ))";
	echo "la suma es $(( $1 + $2 ))";
	echo "la resta es $(( $1 - $2 ))";

	if [[ $1 -ge $2 ]]
	then
		echo "el mas grande es $1";
	else
		echo "el mas grande es $2";
	fi
else
	echo no se ingresaron los 2 numeros por parametro;
	exit 1;
fi
exit 0;
