class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind(side1, side2, side3)
    if side1 <= 0 || side2 <= 0 || side3 <=0
      begin 
        raise TriangleError
          rescue TriangleError => error 
        puts error.message
      end 
    elsif side1 == side2 && side2 == side3 
      return :equiliateral
    elsif (side1 == side2 && side2 != side3) || (side1 == side2 && side1 != side3)
        return :isosceles
      end 
    end 
  end 
  
  class TriangleError < StandardError
   def message
     "a side of a triangle can not be 0...or less than 0 for that matter."
  end 
  
end
