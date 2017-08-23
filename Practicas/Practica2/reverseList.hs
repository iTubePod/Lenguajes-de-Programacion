{-
	Hector Mauricio Gonzalez Coello
	A01328258
-}
import System.Info

reverseList y = rl y [] (length y -1)
		where rl y z i
			| i == 0 = z ++ [y !! i]
			| otherwise = rl(y) (z ++ [y !! i]) (i-1)