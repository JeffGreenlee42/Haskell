bagFreeMessage3 :: Bool -> String
bagFreeMessage3 False = "There is no fee."
bagFreeMessage3 True = "There is $100 fee"


absX :: Double -> Double
absX x
    | x < 0     = -x   -- if x is negative or zero return positive conterpart
    | otherwise = x               -- otherwise return x

isXorY :: Char -> Bool
isXorY x
    | (x == 'x') || (x == 'y') = True
    | otherwise = False

amazingCurve :: Int -> Int
amazingCurve score
    | (2 * score) < 100 = (2 * score)
    | otherwise = 100