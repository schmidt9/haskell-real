{-# LANGUAGE MultiWayIf #-}

module Conditions
(
    checkLocalhost
)
where

checkLocalhost :: String -> String
checkLocalhost ip =
    if ip == "127.0.0.1" || ip == "localhost"
        then "it's localhost"
        else "it's not localhost"

analyzeGold :: Int -> String
analyzeGold standard =
    if  | standard == 999 -> "999"
        | standard == 750 -> "750"
        | otherwise       -> "unknown"

analyzeGold2 :: Int -> String
analyzeGold2 standard
    | standard == 999 = "999"
    | standard == 750 = "750"
    | otherwise       = "unknown"

analyzeGold3 :: Int -> String
analyzeGold3 999 = "999"
analyzeGold3 750 = "750"
analyzeGold3 _   = "unknown"

analyzeGold4 :: Int -> String
analyzeGold4 standard =
    case standard of
        999 -> "999"
        750 -> "750"
        _   -> "unknown"

calculateTime :: Int -> Int
calculateTime timeInS =
    let threshold = 40 
        correction = 120
    in
        if  | timeInS < threshold -> timeInS + correction
            | timeInS >= threshold ->
                let delta = 8
                in timeInS + delta + correction
            | otherwise -> 0

