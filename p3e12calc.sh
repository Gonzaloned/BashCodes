#!/bin/bash
if [[ $# -eq 3 ]]
then 
	case "$2" in
		"%" )
			echo "la division entre $1 y $3 es $(( $1 / $3 ))"
		;;
		"*" )
			echo "la multiplicacion entre $1 y $3 es $(( $1 * $3 ))"
		;;
		"+" )
			echo "la suma entre $1 y $3 es $(( $1 + $3 ))"
		;;
		"-" )
			echo "la resta entre $1 y $3 es $(( $1 - $3 ))"
		;;
	esac
else
	echo no se ingresaron los parametros esperados;
	exit 1;
fi
exit 0;
