module Geometry
  class Triangle
    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      hp = self.perimeter / 2
      # Heron's Formula
      (hp*(hp-@sideA)*(hp-@sideB)*(hp-@sideC)) ** 0.5
    end

    def angles

    end

    def valid?
      (@sideA < @sideB + @sideC) && (@sideA > (@sideB - @sideC).abs) &&
      (@sideB < @sideA + @sideC) && (@sideB > (@sideA - @sideC).abs) &&
      (@sideC < @sideA + @sideB) && (@sideC > (@sideA - @sideB).abs)
    end
  end
end
