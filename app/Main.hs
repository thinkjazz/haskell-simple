{-# LANGUAGE MultiWayIf #-}

module Main where

import Lib

main :: IO ()
-- А я - скромный однострочный комментарий.

main = putStrLn (analyzeGold 750)


checkLocalhost :: String -> String
checkLocalhost ip =
  if ip == "127.0.0.1" || ip == "0.0.0.0"
    then "This is localhost"
    else "This is not localhost"


analyzeGold :: Int -> String
analyzeGold gold
     | gold == 999 = "Wow, you are rich!"
     | gold == 750 = "Nice, You have 750 standard!"
     | gold == 585 = "Not, bad! You are not rich, but you can be rich! Cuz 585 gold is the standard!"
     | otherwise = "Idk such a standard!"
