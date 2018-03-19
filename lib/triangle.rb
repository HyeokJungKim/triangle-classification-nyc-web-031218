require 'pry'
class Triangle
  # write code here
  attr_accessor  :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    binding.pry
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      if @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side3 + @side1 > @side2
        if @side1 == @side2 && @side2 == @side3
          return :equilateral
        elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
          return :isosceles
        else
          return :scalene
        end
      else
        begin
          raise TriangleError
        end
      end
    else
      begin
        raise TriangleError
      end
    end
  end
end


  class TriangleError < StandardError
    # triangle error code
  end
