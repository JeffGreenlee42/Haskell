-- First Haskell program

-- Here we define a constant
e :: Double
e = exp 1

-- Function to square a number
square :: Double -> Double
square x = x * x

-- Physics constants 
    -- initial velocity
v0 :: Double
v0 = 30.0

    -- quantity of gravity (m/s²)
stdGravitykMPS2 :: Double
stdGravitykMPS2 = 9.81

-- intented function for throwing a ball straight up 
yRock30 :: Double -> Double
yRock30 t = v0 * t - (0.5 * stdGravitykMPS2 * square t)

-- Function to compute velocity at any given time t
velocityRock30 :: Double -> Double
velocityRock30 t
  | t > totalTime = 0  -- Rock is on the ground, velocity is 0
  | otherwise = v0 - stdGravitykMPS2 * t
  where 
    v0 = 30.0                -- Initial velocity (m/s)
    stdGravitykMPS2 = 9.81   -- Gravity (m/s²)
    totalTime = (2 * v0) / stdGravitykMPS2  -- Time when rock lands

-- sin of angle theta in degrees
-- degrees must be converted to radians for Haskell sin function

sinDegrees :: Double -> Double
sinDegrees theta = sin (theta * pi / 180)

cubedRoot :: Double -> Double
cubedRoot x = x ** (1/3)

-- g(y) = e^y + 8^y
naturalPowerPlus8Power :: Double -> Double
naturalPowerPlus8Power y = e**y + 8 ** y

h :: Double -> Double
h x = 1 / sqrt((x - 5)**2 + 16)

gamma :: Double -> Double
gamma beta
  | abs beta >= 1 = error "Beta must be between -1 and 1 (exclusive)"
  | otherwise = 1 / sqrt (1 - beta**2)

u :: Double -> Double
u x = (1 / (10 + x)) + (1 / (10 - x))

bigL :: Double -> Double
bigL l = sqrt (l * (l + 1))

bigEX :: Double -> Double
bigEX x =  1 / abs ( x ** 3)

bagFreeMessage3 :: Bool -> String
bagFreeMessage3 False = "There is no fee."
bagFreeMessage3 True = "There is $100 fee

