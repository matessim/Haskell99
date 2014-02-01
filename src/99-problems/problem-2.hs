myButLast :: [a] -> [a]
myButLast [] = error "Can't get but last element from empty list" 
myButLast [e] = []
myButLast (x:xs) = x : myButLast xs

