module FileSystem where

import Data.Char (toUpper)

readTestFile :: IO String
readTestFile = readFile "read_test.txt"

makeUppercaseA :: String -> String
makeUppercaseA str =
  show (map (\c -> if c == 'a' then toUpper c else c) str)

-- variant 1 using >>=
-- IO String -> (String -> IO ()) -> IO ()
printTestFileUppercaseA :: IO ()
printTestFileUppercaseA = readTestFile >>= (print . makeUppercaseA)

-- variant 2 using do notation
printTestFileUppercaseA2 :: IO ()
printTestFileUppercaseA2 = do
  contents <- readTestFile
  print (makeUppercaseA contents)