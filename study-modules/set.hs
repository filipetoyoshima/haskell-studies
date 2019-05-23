module Set (
    emptySet,
    inSet,
    addSet,
    pickSet,
    listaEmSet,
    setEmLista,
    delSet
) where

data Set t = S [t]
           deriving (Eq, Show)

emptySet :: Set t -> Bool
emptySet (S [ ]) = True
emptySet (S [s]) = False

inSet :: (Eq t) => t -> Set t -> Bool
inSet _ (S [ ]) = False
inSet x (S (h:t)) | x == h = True    
                  | otherwise = inSet x (S t)

addSet :: (Eq t) => t -> Set t -> Set t
addSet x (S s) | (elem x s) = S s
               | otherwise = S(x:s)

pickSet :: Set t -> t
pickSet (S [ ]) = error "tem nada aqui"
pickSet (S (h:_)) = h

listaEmSet :: [t] -> Set t
listaEmSet x = S x

setEmLista :: Set t -> [t]
setEmLista (S x) = x

delSet :: (Eq t) => t -> Set t -> Set t
delSet x (S s) = S (delList x s)

delList :: (Eq t) => t -> [t] -> [t]
delList x [] = []
delList x (h:t) | x == h = t
                | otherwise = h : (delList x t)