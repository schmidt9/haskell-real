module Lambdas where

concatSquare :: Int -> String
concatSquare x =
  r ++ " square"
  where
    r = show ((\v -> v * v) x)