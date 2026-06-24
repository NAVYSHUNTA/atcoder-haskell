module Main where

import Data.Bool

main :: IO ()
main = do
    [x, y] <- map read . words <$> getLine :: IO [Int]
    let isEqual = 9 * x == 16 * y
    printYn isEqual

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式に変換する
yn :: Bool -> String
yn = bool "No" "Yes"

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式で出力する
printYn :: Bool -> IO ()
printYn = putStrLn . yn
