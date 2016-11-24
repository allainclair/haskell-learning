import Data.Char (digitToInt)

-- file: ch04/ch04.exercises.hs

-- safeHead :: [a] -> Maybe a
-- safeTail :: [a] -> Maybe [a]
-- safeLast :: [a] -> Maybe a
-- safeInit :: [a] -> Maybe [a]

span' _ [] = ([], [])
span' predicate (x:xs) =
    if predicate x then
        let (prefix, suffix) = span' predicate xs
        in (x:prefix, suffix)
    else
        ([], x:xs)

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith predicate xs =
    let (prefix, suffix) = span predicate xs
    in [prefix] ++ splitWith predicate (tail suffix)

-- Negative string numbers throw a exception
asInt_foldl :: String -> Int
asInt_foldl string =
    foldl func 0 string
    where
        func x y =
            x*10 + digitToInt y

asInt_fold :: String -> Int
asInt_fold string =
    let
        nDigits x
            | x == 0         = 0
            | x `div` 10 > 0 = 1 + nDigits (x `div` 10)
            | otherwise      = 1
        func x y =
            digitToInt x * 10^(nDigits y) + y
    in
        foldr func 0 string

concat' :: [[a]] -> [a]
concat' (x:[]) = x
concat' (x:xs) =
    foldr (:) (concat' xs) x

takeWhile' f (x:xs) =
    if f x then
        x : takeWhile' f xs
    else
        []

takeWhile'' f xs =
    foldr func [] xs
    where
        func x y =
            if f x then
                x : y
            else
                []
