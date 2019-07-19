class SearchController < ApplicationController

  def index
    render locals: {
      facade: WesterosFacade.new(params['house'])
    }
  end

end