class SearchFacade
  attr_reader :total_results

  def initialize; end

  def search_results(query)
    data = service.search_url(query)
    results = [data[:foods][0], data[:foods][1], data[:foods][2], data[:foods][3], data[:foods][4], data[:foods][5],
               data[:foods][6], data[:foods][7], data[:foods][8], data[:foods][9]]
    results.map do |result|
      Search.new(result)
    end
  end

  def total_hits(query)
    data = service.search_url(query)
    data[:totalHits]
  end

  def service
    FoodDataService.new
  end
end
