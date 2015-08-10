require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it("accepts 4 dimensions - width, height, and depth and return the volume") do
      @parcel = Parcel.new(2,3,5)
      expect(@parcel.volume()).to(eq(30))
    end

  end
end
