module Operators where

(|+|) :: Int -> Int -> Int
x |+| y = abs x + abs y

sumAbs :: Int -> Int -> Int
sumAbs x y = x |+| y

eq :: Int -> Int -> Bool
eq x y = x == y

isEqualTo1 :: Int -> Int -> Bool
isEqualTo1 = eq -- same as isEqualTo1 x y = eq x y

isEqualTo2 :: Int -> Int -> Bool
isEqualTo2 x y = x `eq` y
