class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    sides = [side1, side2, side3].sort
    if sides.any?{|s| s <= 0}
      raise TriangleError
    elsif [side1, side2, side3].uniq.size == 1
      :equilateral
    elsif [side1, side2, side3].uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end


# Custom Errors
  class TriangleError < StandardError

  end
end
