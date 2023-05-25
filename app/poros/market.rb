class Market
  attr_reader :data, :id, :name, :street, :city, :county, :state, :zip, :lat, :lon
  
  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = data[:attributes][:city]
    @county = data[:attributes][:county]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
    @lat = data[:attributes][:lat]
    @lon = data[:attributes][:lon]

  end

end