nextPerfect :: Integer -> Integer
isPerfect :: Integer -> Bool
g :: Integer->Integer->Integer
x :: Integer->Integer->Integer

nextPerfect n | isPerfect (n+1) == True = n+1
              | otherwise               = nextPerfect(n+1) 

isPerfect n | n < 1  = False
            | g (n-1) n == n = True
            | otherwise = False

g 0 n = 0
g m n = x m n + g (m-1) n

x m n 
      | n `mod` m == 0   = m
      | otherwise        = 0