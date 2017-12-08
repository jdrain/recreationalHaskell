addThree x y z = x + y + z

sum' xs = foldl (\acc x -> acc + x) 0 xs

main = print $
    sum' ([1,2,3,4])
