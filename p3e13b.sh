#!/bin/bash
if [[ $# -eq 0 ]]
then
	echo "Este script muestra DIR ACTUAL (DondeEstoy), Archivos del dir (Listar), Usuarios conectados al sistema(QuienEsta)";
	read $1;
fi

case $1 in
	"Listar") echo `ls`
	;;
	"DondeEstoy") echo `pwd`
	;;
	"QuienEsta") echo `users`
	;;
esac
exit 0;
