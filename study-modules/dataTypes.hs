data Shape = Circle Float Float Float
           | Rectangle Float Float Float Float
           deriving (Show, Eq)
-- This defines "Shape" type
-- deriving (Show) says it is 'printable'
-- deriving (Eq) says it is comparable by '==' and '/='

data Car a b c = Car {
    company :: a,
    model :: b,
    year :: c
} deriving (Show, Eq)
-- giving names to each field inside datatype

data Car' = Car' {
    company' :: String,
    model' :: String,
    year' :: Int
} deriving (Show, Eq)
-- giving names and types to the fields