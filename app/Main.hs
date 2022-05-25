module Main where

import Lib
{-
Я - сложный многострочный
комментарий, содержащий
нечто
очень важное!
-}
main :: IO ()
-- А я - скромный однострочный комментарий.

main = putStrLn (checkLocalhost "127.0.0.1")


checkLocalhost :: String -> String
checkLocalhost ip = if ip == "127.0.0.1" || ip == "0.0.0.0" then "This is localhost" else "This is not localhost"
