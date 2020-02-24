class Triangle
  attr_reader :side1, :side2, :side3
  attr_accessor :kind

  def initialize(side1, side2, side3)  
    @side1 = side1
    @side2 = side2
    @side3 = side3 
  end

  def kind
    if self.side1 + self.side2 <= self.side3 || 
      self.side2 + self.side3 <= self.side1 ||
      self.side1 + self.side3 <= self.side2 ||
      self.side1 == 0 ||
      self.side2 == 0 ||
      self.side3 == 0
        raise TriangleError
    end

    if self.side1 == self.side2 && self.side1 == self.side3
      self.kind = :equilateral
    elsif (self.side1 == self.side2 && self.side3 != self.side1) ||
      (self.side2 == self.side3 && self.side3 != self.side1) ||
      (self.side1 == self.side3 && self.side3 != self.side2)
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end


  class TriangleError < StandardError
  end
end
