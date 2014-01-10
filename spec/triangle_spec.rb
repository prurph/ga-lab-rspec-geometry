require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'adds the lengths of the sides' do
      triangle = Geometry::Triangle.new(3, 4, 5)
      expect(triangle.perimeter).to eq 12
    end
  end

  describe '#area' do
    it 'finds the area of a triangle' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.area).to eq 6
    end
  end

  describe '#valid?' do
    it 'returns true for valid triangle' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.valid?).to eq true
    end

    it 'returns false for invalid triangle' do
      triangle = Geometry::Triangle.new(2,2,10)
      expect(triangle.valid?).to eq false
    end
  end
end
