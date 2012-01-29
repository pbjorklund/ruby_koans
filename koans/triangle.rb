# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
#def triangle(*args)
#	[:equilateral, :isosceles, :scalene][args[0..2].uniq.size-1]
#end

def triangle(a,b,c)
	a,b,c = [a,b,c].sort
	a+b > c ? [:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.size - 1) : raise(TriangleError)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
