Safetail xs = if null xs then
                []
              else 
                tail xs

Safetail xs | null xs = [] 
            | otherwise = tail xs               

Safetail [] = []
Safetail (_:xs)  = xs
               
