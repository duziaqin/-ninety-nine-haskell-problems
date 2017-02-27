-- (*) Find the number of elements of a list.

-- Example in Haskell:

-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13
length' :: Int -> [a] -> Int
length' counter [] = counter
length' counter (_:xs) = length' (counter + 1) xs

myLength :: [a] -> Int
myLength = length' 0
