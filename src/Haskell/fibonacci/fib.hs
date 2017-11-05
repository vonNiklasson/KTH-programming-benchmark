module Fib where

fibonacci :: Integer -> Integer
fibonacci x = if x > 1
        then fibonacci (x - 1) + fibonacci (x - 2)
        else x
