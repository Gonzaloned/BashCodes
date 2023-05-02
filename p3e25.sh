#!/bin/bash
if ! [ $# -ge 1 ]; 
then
	echo no se ingreso parametro/s
	exit 1
fi
lineagrupo=($(cat /etc/group | grep adm | cut -d : -f 4 | cut -d "," ))
echo ${lineagrupo[*]}
