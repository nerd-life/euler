import Data.List
isPalindrome :: Int -> Bool
isPalindrome n = n == reverse' n

digitsCount :: Int -> Int
digitsCount n
  | n >= 0 && n <= 9 = 1
  | otherwise = 1 + (digitsCount $ n `div` 10)

reverse' :: Int -> Int
reverse' n
  | n >= 0 && n <= 9 = n
  | otherwise = (n `rem` 10)*(10^((digitsCount n)-1)) + (reverse' $ n `div` 10)

largestPalindromeProduct :: [Char]
largestPalindromeProduct = show $ maximum [(x*y) | x <- [100..999], y <- [100..999], isPalindrome(x*y)]