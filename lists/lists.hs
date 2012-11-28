tenTwentyExceptElevenFifteen = [ x | x <- [1..20], elem x [1..10] ]
takeTen = take 10 [1..20]
boomBangs xs  = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]
cycleTakeFifteen  = take 15 (cycle [1..10])
sumTenTwentyThirtyForty = [ x+y | x <- [10..20], y <- [30..40] ]
