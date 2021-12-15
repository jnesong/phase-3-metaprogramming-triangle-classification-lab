class Triangle #triangle class defined

  attr_reader :x, :y, :z
  
def initialize (x, y, z) #three arguments on initialize
  @x = x # each letter
  @y = y # represents a side of 
  @z = z # a triangle. 
end

def kind 
  self.validator
  if x==y && y==z
    :equilateral
  elsif x==y || x==z || y==z
    :isosceles
  else 
    :scalene
  end 
end

def triangle_sides_greater_than_zero?
  [x,y,z].all?{|var| var.positive?} # .all returns true if ALL elements are true, .positive returns true if >0 and false if not
end

def other_triangle_sides_valid?
  x+y>z && x+z>y && y+z>x
end

def validator
  raise TriangleError unless triangle_sides_greater_than_zero? && other_triangle_sides_valid?
end 

class TriangleError < StandardError
end

end
