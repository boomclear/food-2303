require 'rails_helper'

RSpec.describe "search facade" do 
  describe "search facade" do 
    it 'makes query to api and creates search objects' do
      results = SearchFacade.new.search_results("Sweet Potatoes")

      expect(results).to be_a(Array)
      expect(results.count).to eq(10)
    end
    it "shows total results" do 
      total_results = SearchFacade.new.total_hits("Sweet Potatoes")

      expect(total_results).to eq(55579)
    end
  end
end