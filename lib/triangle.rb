#returns :equilateral when all sides are equal (FAILED - 1)
 #   returns :isosceles when any two sides are equal (FAILED - 2)
  #  returns :scalene when no sides are equal (FAILED - 3)
   # raises an error for triangles with no size (FAILED - 4)
    #raises an error for triangles with negative sides (FAILED - 5)
    #aises an error for triangles violating triangle inequality (FAILED - 

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  #triangle sides with no negative and with size
  def positive_side?
    [side1,side2,side3].all?(&:positive?)
  end

  #triangle inequality
  def valid_sides?
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end

  #types of triangles
  def kind
    valid_triangle
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end

    #raise error
    def valid_triangle
      raise TriangleError unless valid_sides? && positive_side?
    end

    class TriangleError < StandardError
    end
end
