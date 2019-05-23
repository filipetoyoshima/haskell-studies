-- source: http://learnyouahaskell.com/starting-out#babys-first-functions
-- and some random content I find on web

-- To use this on GHCI, use following command:
--      :load functions
-- 'functions' is the file name

-- ':l' is an alias for ':load'

-- Haskell basic function structure:
-- nameOfFunction [params...] = return

doubleMe x = x + x
-- just call doubleMe <some number> and receive twice of this number

doubleUs x y = 2*x + 2*y
-- example with two params

doubleIf x = if x > 100
             then x
             else x*2
-- every 'if' statament MUST have an 'else' because
-- 'if' is a statament, and every statement must
-- return something.

doubleIf' x = (if x > 100 then x else x*2)
-- more elegant way
-- function' is a convention to describe
-- slightly different functions

guardedEx x y z | x >= y && x >= z = x
                | y >= x && y >= z = y
                | otherwise = z
-- a more propper way of doing conditional things in Haskell

removeUppercase :: [Char] -> [Char] -- Defines the function type
removeUppercase st = [c | c <- st, c `elem` ['a'..'z']]

triangles = [(a, b, c) | c <- [1..5], b <- [1..5], a <- [1..5]]
-- all possible combinations of ([1..5], [1..5], [1..5])

rightTriangles = [(a, b, c) | a<-[1..10],b<-[1..10],c<-[1..20],(a^2+b^2==c^2)]
-- all possible right triangles in an interval

rightTriangles' = [(a, b, c) | (a, b, c) <- triangles, (a^2+b^2==c^2)]
-- some more elegant way of finding right triangles

fac 0 = 1
fac n = fac (n-1) * n
-- factorial calc by recursion

fac' 0 = 1
fac' 50 = 30414093201713378043612608166064768844377641568960512000000000000
fac' 100 = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
fac' n = fac' (n-1) * n
-- some shortcut to avoid repetitive calc

sumList [] = 0
sumList (h:t) = h + (sumList t)
-- another example of recursion
-- (h:t) divides the list into head and tails
-- [1, 2, 3, 4] -> h=1, t=[2, 3, 4]

-- ------------ --