class Triangle
  attr_accessor :side_a, :side_b, :side_c

    def initialize(side_a, side_b, side_c)
      @side_a=side_a
      @side_b=side_b
      @side_c=side_c
    end

    def kind
      a = self.side_a
      b = self.side_b
      c = self.side_c
      ab = self.side_a + self.side_b
      bc = self.side_b + self.side_c
      ca = self.side_c + self.side_a
      if (a < 0) || (b < 0) || (c < 0) then 
        begin 
          raise TriangleError
        end
      elsif a==0 || b==0 || c==0 then 
        begin 
          raise TriangleError
        end
      elsif (ab <= c) || (bc <= a) || (ca <=b) then
        begin
          raise TriangleError
        end    
      else
        if (a == b && b == c) then
          :equilateral
        elsif (a == b && b != c) || (a != b && b== c) || (a == c && c != b) then
          :isosceles
        else
          :scalene
      end
      
    end
  end
  class TriangleError < StandardError
    
  end
end
