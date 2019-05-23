quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (h:t) =
    let smaller = quicksort [x | x <- t, x <= h]
        bigger = quicksort [x | x <- t, x > h]
    in smaller ++ [h] ++ bigger