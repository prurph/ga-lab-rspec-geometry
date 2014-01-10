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

    def angles
      sides = [@sideA.to_f, @sideB.to_f, @sideC.to_f]
      angles = []

      # put cos of each angle into angles
      angles[0] = (sides[1] ** 2 + sides[2] ** 2 - sides[0] ** 2) / (2 * sides[1] * sides[2])
      angles[1] = (sides[0] ** 2 + sides[2] ** 2 - sides[1] ** 2) / (2 * sides[0] * sides[2])
      angles[2] = (sides[0] ** 2 + sides[1] ** 2 - sides[2] ** 2) / (2 * sides[0] * sides[1])

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
