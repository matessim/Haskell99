myLength [] = 0
myLength li = (myLength (init li)) + 1 
