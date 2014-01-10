require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#area' do
    it 'returns area' do
      rectangle = Geometry::Rectangle.new(10, 10)
      expect(rectangle.area).to eq 100
    end
  end

  describe '#perimeter' do
    it 'returns perimeter' do
      rectangle = Geometry::Rectangle.new(5, 10)
      expect(rectangle.perimeter).to eq 30
    end
  end
end
