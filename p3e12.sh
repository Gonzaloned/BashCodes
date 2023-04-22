#!/bin/bash
echo ingrese num1;
read num1;
echo ingrese num2;
read num2;

echo "la multiplicacion es $(( $num1 * $num2 ))";
echo "la suma es $(( $num1 + $num2 ))";
echo "la resta es $(( $num1 - $num2 ))";

if [[ $num1 -ge $num2 ]]
then
	echo "el mas grande es $num1";
else
	echo "el mas grande es $num2";
fi
exit 0;