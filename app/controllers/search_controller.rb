class SearchController < ApplicationController
  def index
    render locals: {
      search_results: PotterSearchResults.new(params[:house])
    }
  end
end
