toPalindrome xs =
    xs ++ reverse xs

toPalindrome' (x:xs) =
    [x] ++ toPalindrome' xs ++ [x]
toPalindrome' [] = []
