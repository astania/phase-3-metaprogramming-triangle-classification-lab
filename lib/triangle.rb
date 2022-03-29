class Triangle
  # write code here
  attr_accessor :sides

  def initialize(side_1_length, side_2_length, side_3_length)
    @side_1_length = side_1_length
    @side_2_length = side_2_length
    @side_3_length = side_3_length

    @sides = [@side_1_length, @side_2_length, @side_3_length].sort

  end 

  class TriangleError < StandardError
  end 

  def kind 
    if sides.uniq.length == 1 && sides.uniq[0] > 0
      :equilateral
    elsif sides.uniq.length == 2 && ((sides[0] + sides[1]) > sides[2])
      :isosceles
    elsif (sides[0] + sides[1]) > sides[2]
      :scalene
    else   
      raise TriangleError
    end 
  end 

end