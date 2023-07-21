require 'rails_helper'

RSpec.describe "Food search" do 
  describe "searches for food" do
    it "can search for food" do 
      visit "/"

      fill_in :q, with: 'sweet potatoes'
      click_button('Search')
      expect(current_path).to eq("/foods")
      expect(page).to have_content("Upc Code: 8901020020844")
      expect(page).to have_content("Upc Code: 832298010009")
    end
  end
end
