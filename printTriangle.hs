-- https://www.hackerrank.com/challenges/staircase/problem

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret

makeLine :: Int -> Int -> String
makeLine n m
    | m <= n = ([ ' ' | i <- [0..n-m-1] ] ++ [ '#' | i <- [0..m] ])
    | m >  n = []

printElems :: [String] -> IO ()
printElems [] = return ()
printElems (x:xs) = do
    putStrLn x
    printElems xs

main = do
    printElems ( [(makeLine 6 i) | i <- [0..6] ] )
