module Col where

collatz :: Integer -> Integer -> Integer
collatz 1 c = c
collatz n c
    | odd n = 3*n+1:collatz(3*n+1, c+1)
    | even n = div n 2:collatz(div n 2, c+1)
