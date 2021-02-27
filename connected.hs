connected :: [String] -> Bool
g :: String->[String]->Bool
c :: String->String->Int->Bool

connected [] = True
connected (x:[]) = True
connected (x:xs) | g x xs == True  = connected xs
                 | otherwise       = False


g x (m:ms) =  c x m 0 

c [] [] b | b > 1 = False
          | otherwise = True

c (y:ys) (u:us) b |  b > 1     = False
                  |  y /= u    = c ys us (b+1)
                  |  otherwise = c ys us b