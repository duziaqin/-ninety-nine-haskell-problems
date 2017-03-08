module Utils (
  encode,
  ListItem(..),
  encodeModified
) where

import Data.List

encode :: Eq a => [a] -> [(Int, a)]
encode = func . group
            where func [] = []
                  func (x:ys) = (length x, head x):func ys

data ListItem a = Single a | Multiple Int a
    deriving (Show)
encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map func . encode
    where func (1, x) = Single x
          func (n, x) = Multiple n x
