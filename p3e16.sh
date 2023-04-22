#!/bin/bash
if [ $# -ne 1 ]; then
	echo no se ingreso extension buscada
	exit 1
fi
usuarios=` cat /etc/passwd | grep /home | cut -d : -f 1,6 `
for i in $usuarios
do	
	usuario=`echo $i | cut -d : -f1`
	dir_usuario=`echo $i | cut -d : -f2`
	echo $usuario `find $dir_usuario -name "*.$1" | wc -l`	>> reporte.txt
done
