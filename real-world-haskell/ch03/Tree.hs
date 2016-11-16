-- file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

height Empty = 0
height (Node _ left right)
    | hl > hr = hl + 1
    | otherwise = hr + 1
    where
        hl = height left
        hr = height right
