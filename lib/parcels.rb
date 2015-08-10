class Parcel
  define_method(:initialize) do |width, height, depth, weight|
    @width = width
    @height = height
    @depth = depth
    @weight = weight

    @price_per_unit = 2.1
    @upcharge_unit = 10
    @upcharge = 0.05
  end

  define_method(:volume) do
    @width * @height * @depth
  end

  define_method(:cost_to_ship) do
    units = self.volume() * @weight
    upcharges = units./(@upcharge_unit)
    price_per_unit = @price_per_unit + (@upcharge.*(upcharges))
    basic_cost = units * price_per_unit
    basic_cost.round(2)
  end
end
