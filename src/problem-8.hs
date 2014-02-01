compress :: Eq a => [a] -> [a]

compress [] = []
compress all@(x:y:xs) 
        | x == y = y : compress (xs)
        | otherwise = x : y : compress xs
compress [a,b]
        | a == b = [a]
        | otherwise = [a,b]
