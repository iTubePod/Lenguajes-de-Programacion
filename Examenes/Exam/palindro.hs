--Hector Mauricio Gonzalez Coello
--A01328258
--Cuál es el palíndromo más grande formado a partir del producto de dos números de 3 dígitos?
import Data.List
checkPalindrome = cp 999 999 []
		where cp x y z
			| (show (x*y)) == reverse (show (x*y)) = cp x (y-1) (z ++ [(x*y)])
			| y < 100 = cp (x-1) 999 z
			| x < 100 = maximum z
			| otherwise = cp x (y-1) z