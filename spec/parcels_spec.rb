require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it("accepts 4 dimensions - width, height, and depth and return the volume") do
      @parcel = Parcel.new(2,3,5,1)
      expect(@parcel.volume()).to(eq(30))
    end
  end
  
  describe('#cost_to_ship') do
    it('accepts 4 dimensions and returns basic cost') do
      @parcel = Parcel.new(1,1,1,1)
      expect(@parcel.cost_to_ship()).to(eq(1))
    end
  end
end
