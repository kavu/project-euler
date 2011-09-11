fac :: Integer -> Integer
fac x = product [1..x]

euler15 :: [Integer] -> Integer
--euler15 (n:m:_) = product [1..n+1+m+1-2] `div` (product [1..n+1-1] * product[1..m+1-1])
--euler15 (n:_) = product [1..n+1+n+1-2] `div` (product [1..n+1-1] * product[1..n+1-1])
euler15 (n:m:_) = a `div` b
  where
    a = fac (n+m)
    b = fac n * fac m
euler15 (n:_) = a `div` b
  where
    a = fac (n*2)
    b = (fac n)^2
