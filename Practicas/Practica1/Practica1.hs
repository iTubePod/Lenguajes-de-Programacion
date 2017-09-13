import Data.Char

[(x, y, z) | x<-[1..100], y<-[1..100], z<-[1..100], z^2 == x^2 + y^2]

length[x | x<-[-1000 .. 100], x > 0]

sum[x | x <-[1..1000000], mod x 2 == 1]


map toUpper [x | x <- "abcdefg"]

maxlist[] = error "e"
maxlist[e] = e
maxlist(h:t) = max h maxlist t

factorial[0] = 1
factorial[1] = 1
factorial(x) = x * (factorial(x-1))

lastt a [] = error "e"
lastt a [e] = e

