euler9 :: Integer -> Integer
euler9 max = head [ product [x,y,z] |
               x <- [1..max],
               y <- [1..max],
               z <- [1..max],
               x^2 + y^2 == z^2,
               x+y+z == max]
