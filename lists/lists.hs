tenTwentyExceptElevenFifteen = [ x | x <- [1..20], elem x [1..10] ]
takeTen = take 10 [1..20]
boomBangs xs  = [ if x < 10 ten "BOOM!" else "BANG!" | x <- xs, odd x ]
