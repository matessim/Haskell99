-- Project Euler #5
import Data.List

evenlyDivides :: Int -> Int -> Bool
evenlyDivides x y 
            | y > 1 = mod x y == 0 && evenlyDivides x (y - 1)
            | otherwise = True

findSmallestMultiple :: Int -> Int
findSmallestMultiple x = case (elemIndex True [evenlyDivides i x | i <- [x,x*2..]]) of
                            Just value -> (value * x) + x
                            Nothing -> 0

