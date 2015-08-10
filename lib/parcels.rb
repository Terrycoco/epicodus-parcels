class Parcel
  define_method(:initialize) do |width, height, depth, weight|
    @width = width
    @height = height
    @depth = depth
    @weight = weight

    #put money in cents to start
    @price_per_unit = 210
    @upcharge_unit = 10
    @upcharge = 5
  end

  define_method(:volume) do
    @width * @height * @depth
  end

  define_method(:cost_to_ship) do
    units = self.volume() * @weight
    upcharges = (units./(@upcharge_unit)).round(0)
    price_per_unit = @price_per_unit + (@upcharge.*(upcharges))
    basic_cost = (units * price_per_unit) / 100.00
    "%.2f" % basic_cost
  end
end
