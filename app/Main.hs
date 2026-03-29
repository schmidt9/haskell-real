module Main where

import Conditions

main :: IO ()
main =
  print
    ( checkLocalhost "",
      checkLocalhost "2"
    )