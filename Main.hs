-- GitHub へのリンク
-- https://github.com/NAVYSHUNTA/atcoder-haskell

module Main where

import Control.Monad (replicateM)
import Data.Bool

main :: IO ()
main = do
    a <- inputInt
    [b, c] <- inputSplitInt
    s <- inputString
    putStrLn $ show (a + b + c) ++ " " ++ s

-- | 1 行の整数を受け取る
inputInt :: IO Int
inputInt = readLn

-- | 1 行の文字列を受け取る
inputString :: IO String
inputString = getLine

-- | 1 行の空白区切りで与えられる整数を受け取る
inputSplitInt :: IO [Int]
inputSplitInt = map read . words <$> getLine

-- | 1 行の空白区切りで与えられる文字列を受け取る
inputSplitString :: IO [String]
inputSplitString = words <$> getLine

-- | 複数行の整数を受け取る
inputInts :: Int -> IO [Int]
inputInts lineCount = replicateM lineCount readLn

-- | 複数行の文字列を受け取る
inputStrings :: Int -> IO [String]
inputStrings lineCount = replicateM lineCount getLine

-- | 複数行の空白区切りで与えられる整数を受け取る
inputSplitInts :: Int -> IO [[Int]]
inputSplitInts lineCount = replicateM lineCount inputSplitInt

-- | 複数行の空白区切りで与えられる文字列を受け取る
inputSplitStrings :: Int -> IO [[String]]
inputSplitStrings lineCount = replicateM lineCount inputSplitString

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式に変換する
yn :: Bool -> String
yn = bool "No" "Yes"

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式で出力する
printYesNo :: Bool -> IO ()
printYesNo = putStrLn . yn
