class FoodsController < ApplicationController
  def search 
    @results = SearchFacade.new.search_results(params[:q])
    @total_hits = SearchFacade.new.total_hits(params[:q])
  end
end