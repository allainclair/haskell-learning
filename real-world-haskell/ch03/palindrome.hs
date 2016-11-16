palindrome [x] = True
palindrome (x:xs)
    | x == last xs = palindrome $ init xs
    | x /= last xs = False
palindrome [] = True
