class Parcel
  define_method(:initialize) do |width, height, depth, weight|
    @width = width
    @height = height
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    @width * @height * @depth
  end

  define_method(:cost_to_ship) do
    @units = self.volume() * @weight
    @price_per_unit = 0.5
    @units * @price_per_unit
  end
end
