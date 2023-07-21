require 'rails_helper'

RSpec.describe "Search poro" do
  describe "search poro" do 
    it "has attributes search poro" do 
      data = {gtinUpc: "123", description: "Yes", brandOwner: "me", ingredients: "no"}
      poro = Search.new(data)

      expect(poro.upc_code).to eq(data[:gtinUpc])
      expect(poro.description).to eq(data[:description])
      expect(poro.brand_owner).to eq(data[:brandOwner])
      expect(poro.ingredients).to eq(data[:ingredients])

    end
  end
end