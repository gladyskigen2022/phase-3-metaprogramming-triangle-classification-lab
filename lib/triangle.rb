#returns :equilateral when all sides are equal (FAILED - 1)
 #   returns :isosceles when any two sides are equal (FAILED - 2)
  #  returns :scalene when no sides are equal (FAILED - 3)
   # raises an error for triangles with no size (FAILED - 4)
    #raises an error for triangles with negative sides (FAILED - 5)
    r#aises an error for triangles violating triangle inequality (FAILED - 6)

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize side1, side2, side3
    @side1
    @side2
    @side3
  end

end
