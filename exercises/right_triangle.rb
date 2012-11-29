def rightTriangle
  pairs = []
  (1..10).each do |x|
    (1..x).each do |y|
      (1..y).each do |z|
        pairs << [x,y,z] if x*x == y*y+z*z && x+y+z == 24
      end
    end
  end
  pairs
end
