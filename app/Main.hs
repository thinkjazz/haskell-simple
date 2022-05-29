{-# LANGUAGE MultiWayIf #-}

module Main where

import Lib

main :: IO ()

main = putStrLn ()

-- calculateTime :: Int -> Int
-- calculateTime timeInS =
--   if | timeInS < 40 -> timeInS + 120
--      | timeInS < 40 -> timeInS + 8 + 120


-- calculateTime :: Int -> Int
-- calculateTime timeInS =
--   let threshold = 40; correction = 120
--   in
--   if | timeInS < threshold -> timeInS + correction
--      | otherwise ->
--        let delta = 8 in timeInS + delta + correction

calculateTime :: Int -> Int
calculateTime timeInS =
  let threshold = 40 in
  if | timeInS < threshold -> timeInS + correction
     | otherwise -> timeInS + delta + correction
  where
    correction = 120
    delta      = 8


-- checkLocalhost :: String -> String
-- checkLocalhost ip =
--   if ip == "127.0.0.1" || ip == "0.0.0.0"
--     then "This is localhost"
--     else "This is not localhost"


-- analyzeGold :: Int -> String
-- analyzeGold gold
--      | gold == 999 = "Wow, you are rich!"
--      | gold == 750 = "Nice, You have 750 standard!"
--      | gold == 585 = "Not, bad! You are not rich, but you can be rich! Cuz 585 gold is the standard!"
--      | otherwise = "Idk such a standard!"


-- analyzeGold :: Int -> String -- Одно объявление.
-- -- И множество определений...
-- analyzeGold 999 = "Wow! 999 standard!"
-- analyzeGold 750 = "Great! 750 standard."
-- analyzeGold 585 = "Not bad! 585 standard."
-- analyzeGold _ = "I don't know such a standard..."

-- analyzeGold :: Int -> String
-- analyzeGold standard =
--  case standard of
--    999 -> "Wow! 999 standard!"
--    750 -> "Great! 750 standard."
--    585 -> "Not bad! 585 standard."
--    _ -> "I don't know such a standard..."