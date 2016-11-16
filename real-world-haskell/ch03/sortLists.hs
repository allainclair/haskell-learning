import Data.List

f x y
    | length x > length y  = GT
    | length x == length y = EQ
    | otherwise            = LT

sortLists xs =
    sortBy f xs
