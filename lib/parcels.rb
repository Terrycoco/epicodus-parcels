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
  
end
