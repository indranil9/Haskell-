partitioned :: [Int] -> Bool
isLength :: [Int] -> Int
m :: [Int]->[Int]->Int->Bool
p :: Int->[Int]->Int->Int->Bool
f :: Int->[Int]->Bool



isLength [] = 0
isLength (y:ys) = y + isLength ys

partitioned [] = False

partitioned n | isLength n == 1 = True
              | otherwise       = m n n 1

m [] n t = False
m (x:xs) n t | p x n t 1 == True  = True
             | otherwise      = m xs n (t+1)

p y [] v c = True
p y (m1:ms) v c | v == c   = f y ms  
                | m1 > y    = False
                | m1 <= y    = p y ms v (c+1)


f y [] = True
f y (b:bs)  | y < b    = f y bs
            | otherwise  = False

