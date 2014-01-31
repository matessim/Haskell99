myReverse [] = []
myReverse [a] = [a]
myReverse li = last li : myReverse (init li)

