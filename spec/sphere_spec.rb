require_relative '../lib/sphere'

RSpec.describe Sphere do
  let(:radius) { 10 }

  subject(:sphere) { Sphere.new(radius) }

  describe '#initialize' do
    it 'creates a new instance of a Sphere with a radius' do
      expect(sphere).to be_a Sphere
    end
  end

  ### IMPLEMENT YOUR OWN TESTS HERE

  #radius
  describe '#radius' do
    it 'returns the value of @radius' do
      expect(sphere.radius).to be radius
    end
  end

  #diameter
  describe '#diameter' do
    it 'returns the diameter of the sphere' do
      expect(sphere.diameter).to be 20
    end
  end

  #surface_area
  describe '#surface_area' do
    it 'returns surface_area of the sphere' do
      expect(sphere.surface_area).to be_within(0.1).of(1256.64)
    end
  end

  #volume
  describe '#volume' do
    it 'returns volume of the sphere' do
      expect(sphere.volume).to be_within(0.1).of(4188.79)
    end
  end

  #great_circle_area
  # http://en.wikipedia.org/wiki/Great_circle
end
