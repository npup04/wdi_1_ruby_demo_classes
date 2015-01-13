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
    @radius * Math::PI ** 2
  end

  def circumference
    2 * Math::PI * @radius
  end
end
