--Hector Mauricio Gonzalez Coello
--A01328258
--Dada una secuencia de números primos, siendo el primer primo el número 2, el tercer primo el 3 y así sucesivamente,  cuál es el número primo 10,001 de la secuencia?
checkSequence x = cs x 1 1
	where cs x curr i
		| x == i = curr
		| isPrime curr = cs x (curr+1) (i+1)
		| otherwise = cs x (curr+1) i
isPrime n
    | n <= 1 = False
    | otherwise = not $ any (\x -> n `mod` x == 0) [2,3..(n-1)]