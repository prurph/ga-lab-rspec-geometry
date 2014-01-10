require 'pry'

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

    def find_cos(a, b, c) # Returns cos of angle opposite c
      (a.to_f ** 2 + b.to_f ** 2 - c.to_f ** 2) / (2 * a.to_f * b.to_f)
    end

    def angles
      sides = [@sideA.to_f, @sideB.to_f, @sideC.to_f]
      angles = []

      angles[0] = find_cos(@sideB, @sideC, @sideA)
      angles[1] = find_cos(@sideC, @sideA, @sideB)
      angles[2] = find_cos(@sideA, @sideB, @sideC)

      # now cos-1 the array and convert to degrees
      angles.map!{ |x| Math.acos(x) * 180 / Math::PI }
      angles

    end

    def valid?
      (@sideA < @sideB + @sideC) && (@sideA > (@sideB - @sideC).abs) &&
      (@sideB < @sideA + @sideC) && (@sideB > (@sideA - @sideC).abs) &&
      (@sideC < @sideA + @sideB) && (@sideC > (@sideA - @sideB).abs)
    end
  end
end
