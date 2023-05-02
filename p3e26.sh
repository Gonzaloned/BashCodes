#!/bin/bash
if [ $# -eq 0 ]; then
	echo no se ingresaron rutas
fi
vector=($*)  #Me guardo Lista de parametros en un vector nuevo
for (( i=1; i<$#; i++ ))
do
	impar=$(($i%2))
	echo  en pos $i esta ${vector[$i]}
	if [ $impar -eq 1 ];then		
		if [ -d "./${vector[$i]}" ];then
			echo "./${vector[$i]}" es directorio
		fi
		if [ -f "./${vector[$i]}" ];then
			echo "./${vector[$i]}" es archivo
		fi
	fi
done
