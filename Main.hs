-- GitHub へのリンク
-- https://github.com/NAVYSHUNTA/atcoder-haskell

module Main where

import Data.Bool

main :: IO ()
main = do
    [x, y] <- inputInts
    let isEqual = 9 * x == 16 * y
    printYesNo isEqual

-- | \( O(n) \) : 1 行の 1 個の整数を受け取る
inputInt :: IO Int
inputInt = readLn

-- | \( O(n) \) : 1 行の複数個の整数を受け取る
inputInts :: IO [Int]
inputInts = map read . words <$> getLine

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式に変換する
yn :: Bool -> String
yn = bool "No" "Yes"

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式で出力する
printYesNo :: Bool -> IO ()
printYesNo = putStrLn . yn
