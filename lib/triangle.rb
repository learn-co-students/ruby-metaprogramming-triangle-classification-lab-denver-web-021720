class Triangle

  attr_accessor :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end 

  def kind 
    if (@s1 <= 0 || @s2 <= 0 || @s3 <= 0) || (@s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s1 + @s3 <= @s2)
      raise TriangleError
    end 
    if @s1 == @s2 && @s1 == @s3
       kind = :equilateral
    elsif
      @s1 != @s2 && @s2 != @s3 && @s1 != @s3
      kind = :scalene
    else 
      kind = :isosceles
    end 
  end 

  class TriangleError < StandardError
    def message
      "Not a triangle!"
    end
   end

  
  
end