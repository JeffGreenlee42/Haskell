import Data.List
import System.IO

primNumbers = [3,5,7,11]

morePrimes = primNumbers ++ [13,17,19,23,29]

favNums = 2 : 6 : 13 : 304 :[]
multList = [[2,3,4],[5,7.9,10]]
morePrimes2 = 2 : morePrimes
lenPrime = length morePrimes2
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2
first3Primes = take 3 morePrimes2
removePrimes = drop 3 morePrimes2
is7inList = 7 `elem` morePrimes2
more2s = take 10 (repeat 2)
more2s_again = replicate 10 2
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 9 == 0, x `mod` 13 == 0]
listBiggerThan5 = filter (>5) morePrimes
evensUpTo20 = takeWhile (<= 20) [2,4..]
multTable = [[[x * y | y <- [1..10]]] | x <- [1..10]]
bobSmith = ("Bob Smith",45)
bobsName = fst bobSmith
bobsAge = snd bobSmith
