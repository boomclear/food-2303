class FoodDataService 
  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/')
  end
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_url(query)
    get_url("foods/search?api_key=#{Figaro.env.food_data_api}&query=#{query}")
  end
end