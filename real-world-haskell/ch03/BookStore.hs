-- file: ch03/BookStore.hs

data BookInfo = Book Int String [String]
                deriving (Show)

-- data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

type BookRecord = (BookInfo, BookReview)

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]
