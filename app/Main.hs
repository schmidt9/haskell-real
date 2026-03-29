module Main where

import Conditions

main :: IO ()
main = putStrLn (checkLocalhost "localhost") 