#!/bin/bash
num=(10 3 5 7 9 3 5 4)
res=1
productoria(){
	for num in ${num[*]}
	do
		res=$(( $res * num ))
	done	
}

productoria
echo el resultado es $res



