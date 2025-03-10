type R = Double

type Time           = R
type TimeInterval   = R
type Position       = R
type Velocity       = R

type PositionFunction = Time -> Position
type VelocityFunction = Time -> Velocity


-- averageVelocity :: Time -> Time -> PositionFunction -> Velocity

-- averageVelocity2 :: Time -> TimeInterval -> PositionFunction -> Velocity
-- averageVelocity2 t dt x = (x (t + dt/2)) - x (t - dt/2) / dt

type Derivative = (R -> R) -> R -> R

derivative :: R -> Derivative
derivative dt x t = (x (t + dt/2) - x (t - dt/2)) / dt

carPosition :: Time -> Position
carPosition t = cos t

carVelocity :: Time -> Velocity
carVelocity = derivative 0.01 carPosition

velFromPos :: R                         -- dt
            -> (Time -> Position)       -- position function
            -> (Time -> Velocity)       -- velocity function
velFromPos = derivative

positionCV :: Position -> Velocity -> Time -> Position
positionCV x0 v0 t = v0 * t + x0