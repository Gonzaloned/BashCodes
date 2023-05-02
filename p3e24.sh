#!/bin/bash
vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )
elementos=$((${#vector1[@]}-1)) # cant elementos

for ((pos=0;pos<=$elementos;pos++)); do
	echo la suma de los elementos de la posicion $pos de los vectores es $(( ${vector1[$pos]} + ${vector2[$pos]} ))
done
