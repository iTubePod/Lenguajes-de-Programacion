--Hector Mauricio Gonzalez Coello
--A01328258
--Encuentra el entero positivo más pequeño que puede ser dividido por cualquiera de los números entre 1 y 20 sin que exista residuo (residuo cero)
mint =
	foldr1 lcm[1..20]