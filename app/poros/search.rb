class Search
  attr_reader :upc_code, :description, :brand_owner, :ingredients
  def initialize(data)
    @upc_code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
