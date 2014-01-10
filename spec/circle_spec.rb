require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'returns the circumference of a circle' do
      circle = Geometry::Circle.new(10)
      expect(circle.circumference).to eq 20*Math::PI
    end
  end

  describe '#area' do
    it 'returns the area of a circle' do
      circle = Geometry::Circle.new(10)
      expect(circle.area).to eq 100*Math::PI
    end
  end
end
