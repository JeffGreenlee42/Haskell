Time :: Double

PositionFunction :: 


averageVelocity :: Time -> Time -> PositionFunction -> Velocity

averageVelocity2 :: Time -> TimeInterval -> PositionFunction -> Velocity
averageVelocity2 t dt x = (x (t + dt/2)) - x (t - dt/2) / dt