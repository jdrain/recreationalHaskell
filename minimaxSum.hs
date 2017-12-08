-- https://www.hackerrank.com/challenges/mini-max-sum/problem

import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Int]
    let ss  = quicksort arr
    let l   = length ss
    putStr . show $ ( sum ( take (l - 1) ss ) )
    putStr " "
    putStr . show $ ( sum ( drop 1 ss ) )


-- Quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort ys ++ [x] ++ quicksort zs
    where
        ys = [i | i <- xs, i <= x]
        zs = [i | i <- xs, i > x]


-- IO handler
getMultipleLines :: Int -> IO [String]
getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret 
