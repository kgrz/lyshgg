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
  xs.collect {|x| x > 10 ? "BOOM!" : "BANG!" unless x.odd? }.compact
end

def boomBangsReject xs
  xs.reject { |x| x.odd? }.collect {|x| x > 10 ? "BOOM!" : "BANG!" }
  # The above code is slow since the list is traversed twice
  # according to http://stackoverflow.com/questions/310426/list-comprehension-in-ruby
end

def boomBangsSelect xs
  xs.select {|x| x.odd? }.map {|x| x > 10 ? "BOOM!": "BANG!" }
end

def sumTenTwentyThirtyForty
  (10..20).collect { |x| (30..40).collect { |y| y+x } }.flatten
end

def cycleTakeFifteen
  (1..10).cycle.take 15
end

def getCharsBetweenTandZ string
  string.chars.select { |x| ('t'..'z').inlcude? x }.join
end

# Creates the Hash. Optionally, the Array(arr1) ensures that this works
# correctly even when numbers are sent in. Eg: zipCreateHash 1,2 or 
# zipCreateHash :arr, 1

def zipCreateHash arr1,arr2
  Hash[Array(arr1).zip Array(arr2)]
end

