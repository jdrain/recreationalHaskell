let fib n = (fib n-1) + (fib n-2)
    fib 1 = 1
    fib 2 = 2

main = $ print
   fib (2)
