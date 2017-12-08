
-- Quicksort
quicksort :: [Int] -> [Int]
quicksort ([])   = []
quicksort (x:xs) = quicksort ys ++ [x] ++ quicksort zs
    where
        ys = [i | i <- xs, i <= x]
        zs = [i | i <- xs, i > x]
