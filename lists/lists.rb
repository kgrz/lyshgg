# lists out the numbers from 1 to 20 if they do not fall in the ranges of 1 to 15

def oneTwentyExceptOneFifteen
  (1..20).reject { |x| (1..15).include? x }
end


def takeTen
  (1..20).take 10
end

# Replace every odd number greater than 10 with "BANG!" and every odd 
# number less than 10 with "BOOM!". If number is not odd, throw it out

def boomBangs xs
  # Using .select here won't work
  xs.reject { |x| x.odd? }.collect {|x| x > 10 ? "BOOM!" : "BANG!" }
end
