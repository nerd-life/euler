fibonacci  :: Int -> Int
fibonacci  n
  | n == 1 = 1
  | n == 2 = 1
  | otherwise = (fibonacci  $ n - 1) + (fibonacci  $ n - 2)

sumOfEvenFibonacci :: Int
sumOfEvenFibonacci = sum [fibonacci number | number <- [3,6..33]]