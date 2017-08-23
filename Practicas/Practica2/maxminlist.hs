{-
	Hector Mauricio Gonzalez Coello
	A01328258
-}
import System.Info

maxminlist y  = mml y (head y) (head y) 1
		where mml y max min i
			| length y == 0 = (0,0)
			| i == length y = (min, max)
			| y !! i < min = mml y max (y !! i) (i+1)
			| y !! i > max = mml y (y !! i) min (i+1)
			| otherwise = mml y max min (i+1)