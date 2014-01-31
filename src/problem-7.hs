data NestedList a = Elem a | NestedList [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (NestedList []) = []
flatten (NestedList x) = [n | el <- x , n <- flatten el]

