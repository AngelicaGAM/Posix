#!/bin/bash
#verifico si las primeras palabras de un txt son =
cat $1 | tr '\ ' '\n' > x
sed -n '1p' x > x1
sed -n '2p' x > x2
sed -n '3p' x > x3
va1=`cat x1`
va2=`cat x2`
va3=`cat x3`
if [ $va1 = $va2 ]
then
	if [ $va2 = $va3 ]
	 then
		echo "Las 3 palabras son iguales "
	fi
else
	echo "No son iguales"
	echo "Detalles: "
fi
#Verifica 3 archivos si son =
 diff3 x1 x2 x3 
