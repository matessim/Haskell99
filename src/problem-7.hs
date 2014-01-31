data NestedList a = Elem a | NestedList [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (NestedList x) = [flatten el | el <- x]

