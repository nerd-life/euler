sumNaturals :: Int -> Int
sumNaturals limit = sum [ x | x <- [1..limit], x `rem` 3 == 0 || x `rem` 5 == 0]