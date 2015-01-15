class Circle
  def initialize(radius)
    @radius = radius
  end

  def radius
    @radius
  end

  def diameter
    @radius * 2
  end

  def area
    Math::PI * @radius ** 2
  end

  def circumference
    Math::PI * @radius * 2
  end

end
