length' (_:xs) =
    1 + length' xs
length' [] = 0
