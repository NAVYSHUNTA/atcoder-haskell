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
    (b, c) <- inputInt2
    s <- inputString
    putStrLn $ show (a + b + c) <> " " <> s

------------------------------------------------------------
-- * Input
------------------------------------------------------------

-- ** Single line

-- | 1 行の文字列を受け取る
inputByteString :: IO BS.ByteString
inputByteString = BS.getLine

-- | 1 行の文字列を受け取る
inputString :: IO String
inputString = getLine

-- | 1 行の整数を受け取る
inputInt :: IO Int
inputInt = readInt <$> inputByteString

-- | 1 行の整数を受け取る
inputInteger :: IO Integer
inputInteger = readInteger <$> inputByteString

-- ** Space separated

-- | 1 行の空白区切りで与えられる文字列を受け取る
inputSplitByteString :: IO [BS.ByteString]
inputSplitByteString = BS.words <$> inputByteString

-- | 1 行の空白区切りで与えられる 2 個の文字列を受け取る
inputByteString2 :: IO (BS.ByteString, BS.ByteString)
inputByteString2 = toTuple2 <$> inputSplitByteString

-- | 1 行の空白区切りで与えられる 3 個の文字列を受け取る
inputByteString3 :: IO (BS.ByteString, BS.ByteString, BS.ByteString)
inputByteString3 = toTuple3 <$> inputSplitByteString

-- | 1 行の空白区切りで与えられる 4 個の文字列を受け取る
inputByteString4 :: IO (BS.ByteString, BS.ByteString, BS.ByteString, BS.ByteString)
inputByteString4 = toTuple4 <$> inputSplitByteString

-- | 1 行の空白区切りで与えられる文字列を受け取る
inputSplitString :: IO [String]
inputSplitString = words <$> inputString

-- | 1 行の空白区切りで与えられる 2 個の文字列を受け取る
inputString2 :: IO (String, String)
inputString2 = toTuple2 <$> inputSplitString

-- | 1 行の空白区切りで与えられる 3 個の文字列を受け取る
inputString3 :: IO (String, String, String)
inputString3 = toTuple3 <$> inputSplitString

-- | 1 行の空白区切りで与えられる 4 個の文字列を受け取る
inputString4 :: IO (String, String, String, String)
inputString4 = toTuple4 <$> inputSplitString

-- | 1 行の空白区切りで与えられる整数を受け取る
inputSplitInt :: IO [Int]
inputSplitInt = map readInt <$> inputSplitByteString

-- | 1 行の空白区切りで与えられる 2 個の整数を受け取る
inputInt2 :: IO (Int, Int)
inputInt2 = toTuple2 <$> inputSplitInt

-- | 1 行の空白区切りで与えられる 3 個の整数を受け取る
inputInt3 :: IO (Int, Int, Int)
inputInt3 = toTuple3 <$> inputSplitInt

-- | 1 行の空白区切りで与えられる 4 個の整数を受け取る
inputInt4 :: IO (Int, Int, Int, Int)
inputInt4 = toTuple4 <$> inputSplitInt

-- | 1 行の空白区切りで与えられる整数を受け取る
inputSplitInteger :: IO [Integer]
inputSplitInteger = map readInteger <$> inputSplitByteString

-- | 1 行の空白区切りで与えられる 2 個の整数を受け取る
inputInteger2 :: IO (Integer, Integer)
inputInteger2 = toTuple2 <$> inputSplitInteger

-- | 1 行の空白区切りで与えられる 3 個の整数を受け取る
inputInteger3 :: IO (Integer, Integer, Integer)
inputInteger3 = toTuple3 <$> inputSplitInteger

-- | 1 行の空白区切りで与えられる 4 個の整数を受け取る
inputInteger4 :: IO (Integer, Integer, Integer, Integer)
inputInteger4 = toTuple4 <$> inputSplitInteger

-- ** Multiple lines

-- | 複数行の文字列を受け取る
inputByteStrings :: Int -> IO [BS.ByteString]
inputByteStrings lineCount = replicateM lineCount inputByteString

-- | 複数行の文字列を受け取る
inputStrings :: Int -> IO [String]
inputStrings lineCount = replicateM lineCount inputString

-- | 複数行の整数を受け取る
inputInts :: Int -> IO [Int]
inputInts lineCount = replicateM lineCount inputInt

-- ** Multiple lines (space separated)

-- | 複数行の空白区切りで与えられる文字列を受け取る
inputSplitByteStrings :: Int -> IO [[BS.ByteString]]
inputSplitByteStrings lineCount = replicateM lineCount inputSplitByteString

-- | 複数行の空白区切りで与えられる文字列を受け取る
inputSplitStrings :: Int -> IO [[String]]
inputSplitStrings lineCount = replicateM lineCount inputSplitString

-- | 複数行の空白区切りで与えられる整数を受け取る
inputSplitInts :: Int -> IO [[Int]]
inputSplitInts lineCount = replicateM lineCount inputSplitInt

-- ** Helpers

-- | 長さ 2 のリストを 2 要素のタプルに変換する
toTuple2 :: [a] -> (a, a)
toTuple2 [a, b] = (a, b)

-- | 長さ 3 のリストを 3 要素のタプルに変換する
toTuple3 :: [a] -> (a, a, a)
toTuple3 [a, b, c] = (a, b, c)

-- | 長さ 4 のリストを 4 要素のタプルに変換する
toTuple4 :: [a] -> (a, a, a, a)
toTuple4 [a, b, c, d] = (a, b, c, d)

-- ** Parsing

-- | ByteString を Int に変換する
readInt :: BS.ByteString -> Int
readInt = fst . fromJust . BS.readInt

-- | ByteString を Integer に変換する
readInteger :: BS.ByteString -> Integer
readInteger = fst . fromJust . BS.readInteger

------------------------------------------------------------
-- * Output
------------------------------------------------------------

-- ** Space separated

-- | 文字列を空白区切りで出力する
outputSplitByteString :: [BS.ByteString] -> IO ()
outputSplitByteString = BS.putStrLn . BS.unwords

-- | 文字列を空白区切りで出力する
outputSplitString :: [String] -> IO ()
outputSplitString = outputSplit id

-- | 整数を空白区切りで出力する
outputSplitInt :: [Int] -> IO ()
outputSplitInt = outputSplit show

-- | 整数を空白区切りで出力する
outputSplitInteger :: [Integer] -> IO ()
outputSplitInteger = outputSplit show

-- ** Line separated

-- | 文字列を改行区切りで出力する
outputLineByteString :: [BS.ByteString] -> IO ()
outputLineByteString = BS.putStr . BS.unlines

-- | 文字列を改行区切りで出力する
outputLineString :: [String] -> IO ()
outputLineString = outputLine id

-- | 整数を改行区切りで出力する
outputLineInt :: [Int] -> IO ()
outputLineInt = outputLine show

-- | 整数を改行区切りで出力する
outputLineInteger :: [Integer] -> IO ()
outputLineInteger = outputLine show

-- ** Generic

-- | 空白区切りで出力する
outputSplit :: (a -> String) -> [a] -> IO ()
outputSplit f = putStrLn . unwords . map f

-- | 改行区切りで出力する
outputLine :: (a -> String) -> [a] -> IO ()
outputLine f = putStr . unlines . map f

------------------------------------------------------------
-- * Utilities
------------------------------------------------------------

-- | True の場合に選択される文字列
type TrueResult = String

-- | False の場合に選択される文字列
type FalseResult = String

-- | \( O(1) \) : ブール値が True なら第 2 引数、False なら第 3 引数を返す
choose :: Bool -> a -> a -> a
choose p trueResult falseResult = bool falseResult trueResult p

-- | \( O(1) \) : ブール値が True なら第 2 引数、False なら第 3 引数の文字列を出力する
printChoose :: Bool -> TrueResult -> FalseResult -> IO ()
printChoose p trueResult falseResult = putStrLn $ choose p trueResult falseResult

-- | \( O(1) \) : ブール値を @\"Yes\"@ / @\"No\"@ の形式で出力する
printYesNo :: Bool -> IO ()
printYesNo p = printChoose p "Yes" "No"

-- | \( O(n) \) : 条件を満たす要素の個数を数える
countBy :: (Foldable t) => (a -> Bool) -> t a -> Int
countBy p = foldr (\x cnt -> if p x then cnt + 1 else cnt) 0
