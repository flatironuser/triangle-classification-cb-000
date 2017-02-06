class Triangle
  attr_accessor :side1, :side2, :side3


  def initialize(a,b,c)
    @side1 = a
    @side2 = b
    @side3 = c
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 ||
    @side3 + @side1 <= @side2
      begin
        raise TriangleError
      end
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "this triangle violates the rules of triangles and is thus not an error"
  end
end
