-- GitHub へのリンク
-- https://github.com/NAVYSHUNTA/atcoder-haskell

module Main where

import Control.Monad
import Data.Bool
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
    a <- inputInt
    [b, c] <- inputSplitInt
    s <- inputString
    putStrLn $ show (a + b + c) <> " " <> s

-- | 1 行の整数を受け取る
inputInt :: IO Int
inputInt = fst . fromJust . BS.readInt <$> BS.getLine

-- | 1 行の文字列を受け取る
inputString :: IO String
inputString = getLine

-- | 1 行の文字列を受け取る
inputByteString :: IO BS.ByteString
inputByteString = BS.getLine

-- | 1 行の空白区切りで与えられる整数を受け取る
inputSplitInt :: IO [Int]
inputSplitInt = map (fst . fromJust . BS.readInt) . BS.words <$> BS.getLine

-- | 1 行の空白区切りで与えられる文字列を受け取る
inputSplitString :: IO [String]
inputSplitString = words <$> getLine

-- | 1 行の空白区切りで与えられる文字列を受け取る
inputSplitByteString :: IO [BS.ByteString]
inputSplitByteString = BS.words <$> BS.getLine

-- | 複数行の整数を受け取る
inputInts :: Int -> IO [Int]
inputInts lineCount = replicateM lineCount inputInt

-- | 複数行の文字列を受け取る
inputStrings :: Int -> IO [String]
inputStrings lineCount = replicateM lineCount inputString

-- | 複数行の文字列を受け取る
inputByteStrings :: Int -> IO [BS.ByteString]
inputByteStrings lineCount = replicateM lineCount inputByteString

-- | 複数行の空白区切りで与えられる整数を受け取る
inputSplitInts :: Int -> IO [[Int]]
inputSplitInts lineCount = replicateM lineCount inputSplitInt

-- | 複数行の空白区切りで与えられる文字列を受け取る
inputSplitStrings :: Int -> IO [[String]]
inputSplitStrings lineCount = replicateM lineCount inputSplitString

-- | 複数行の空白区切りで与えられる文字列を受け取る
inputSplitByteStrings :: Int -> IO [[BS.ByteString]]
inputSplitByteStrings lineCount = replicateM lineCount inputSplitByteString

-- | 整数を空白区切りで出力する
outputSplitInt :: [Int] -> IO ()
outputSplitInt output = putStrLn $ unwords . map show $ output

-- | 文字列を空白区切りで出力する
outputSplitString :: [String] -> IO ()
outputSplitString output = putStrLn $ unwords output

-- | 文字列を空白区切りで出力する
outputSplitByteString :: [BS.ByteString] -> IO ()
outputSplitByteString output = BS.putStrLn $ BS.unwords output

-- | 整数を改行区切りで出力する
outputLineInt :: [Int] -> IO ()
outputLineInt output = putStr $ unlines . map show $ output

-- | 文字列を改行区切りで出力する
outputLineString :: [String] -> IO ()
outputLineString output = putStr $ unlines output

-- | 文字列を改行区切りで出力する
outputLineByteString :: [BS.ByteString] -> IO ()
outputLineByteString output = BS.putStr $ BS.unlines output

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式に変換する
yn :: Bool -> String
yn = bool "No" "Yes"

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式で出力する
printYesNo :: Bool -> IO ()
printYesNo = putStrLn . yn

-- | \( O(n) \) : 条件を満たす要素の個数を数える
count :: (Foldable t) => (a -> Bool) -> t a -> Int
count p = foldr (\x cnt -> if p x then cnt + 1 else cnt) 0
