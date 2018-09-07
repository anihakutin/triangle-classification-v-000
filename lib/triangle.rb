class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    if [a,b,c].uniq.size == 1
      :equilateral
    elsif [a,b,c].uniq.size == 2
      :isosceles
    elsif [a,b,c].uniq.size == 3
      :scalene      
    else
      raise TriangleError
    end
  end


# Custom Errors
  class TriangleError < StandardError

  end
end
