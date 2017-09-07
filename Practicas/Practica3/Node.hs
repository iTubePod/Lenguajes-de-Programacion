--Hector Mauricio Gonzalez Coello
--A01328258
--Insert Array elements to a BT
data Tree x = E | Node x (Tree x) (Tree x) deriving(Show)
insertt x E =  Node x E E
insertt x (Node z le ri)
	| x == z = Node z le ri
	| x > z =  Node z le (insertt x ri)
	| x < z = Node z (insertt x le) ri
parseArray x z
	| length(x) == 0 = z 
	| otherwise = parseArray (tail x) (insertt (head x) z)