--Hector Mauricio Gonzalez Coello
--A01328258
--Extract elements from a BT ordered
data Tree x = Empty | Node x (Tree x) (Tree x) deriving (Show)
inOrder Empty = []
inOrder (Node n l r) = inOrder l ++ [n] ++ inOrder r