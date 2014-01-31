myReverse :: [a] -> [a]
myReverse [] = []
myReverse li = last li : myReverse (init li)

