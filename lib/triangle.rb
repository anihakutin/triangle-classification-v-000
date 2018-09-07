class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    sides = [side1, side2, side3]
    if sides.all? {|side| sides[0] == side}
      :equilateral
    elsif sides.any? {|side| sides[0] == side && !not_eql?(sides)}
      :isosceles
    elsif not_eql?(sides)
      :scalene
    else
      raise TriangleError
    end
  end
  def not_eql?(sides)
    sides.all? {|side| sides[0] != side}
  end

# Custom Errors
  class TriangleError < StandardError

  end
end
