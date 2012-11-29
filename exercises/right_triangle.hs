rightTriangle = [ (x,y,z) | x <- [1..10], y <- [1..x], z <- [1..y], x+y+z == 24, x^2 == y^2+z^2 ]
