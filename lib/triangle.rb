class Triangle
  attr_reader :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle
    if (@side1 == @side2 && @side2 == @side3)
      :equilateral
    elsif (@side1 == @side2 || @side2 == @side3 || @side3 == @side1)
      :isosceles
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
    @side1 > 0 && @side2 > 0 && @side3 > 0
  end

  def valid_triangle_inequality?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end
  class TriangleError < StandardError
  end

end
