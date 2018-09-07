class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    sides = [side1, side2, side3]
    if eql_sides?(sides)
      :equilateral
    elsif sides.any? {|side| sides[0] == side} && eql_sides?(sides)
      :isosceles
    elsif !eql_sides?(sides)
      :scalene
    else
      raise TriangleError
    end
  end
  def eql_sides?(sides)
    sides.uniq.length == 1
  end

# Custom Errors
  class TriangleError < StandardError

  end
end
