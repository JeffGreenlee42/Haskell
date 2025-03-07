type R = Double

type Time           = R
type TimeInterval   = R
type Position       = R
type Velocity       = R

type PositionFunction = Time -> Position
type VelocityFunction = Time -> Velocity


averageVelocity :: Time -> Time -> PositionFunction -> Velocity

averageVelocity2 :: Time -> TimeInterval -> PositionFunction -> Velocity
averageVelocity2 t dt x = (x (t + dt/2)) - x (t - dt/2) / dt