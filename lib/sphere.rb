class Sphere
  def initialize(radius)
    @radius = radius
  end

  def radius
    @radius
  end

  def diameter
    @radius * 2
  end

  def surface_area
    4 * Math::PI * @radius ** 2
  end

  def volume
    (4 / 3) * Math::PI * (@radius ** 3)
  end

end
