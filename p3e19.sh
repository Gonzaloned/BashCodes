#!/bin/bash

scripts=(`find -name "*.sh"`)
select script in ${scripts[*]}
do 
	echo Ingrese la opcion a ejecutar:
	bash $script
done
