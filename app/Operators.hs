module Operators where

isEqualTo :: Int -> Int -> Bool
isEqualTo x y = x == y

-- if isEqualTo code1 code2 then ... else ...
-- where code1 = 123
-- code2 = 124

-- as infix:
-- if code1 `isEqualTo` code2 then ... else ...
-- where code1 = 123
-- code2 = 124