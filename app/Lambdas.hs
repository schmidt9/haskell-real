module Lambdas where

import Data.Char (toUpper)

concatSquare :: Int -> String
concatSquare x =
  r ++ " square"
  where
    -- lambda with functions composition . and application operator $
    -- same as show ((\v -> v * v) x)
    r = show . (\v -> v * v) $ x

-- higher order functions (map)
strToUpper :: String -> String
strToUpper = map toUpper