class SearchController < ApplicationController
  def index
  end

  def results
    #if params[:query_match][:match_id].empty?
      @matches = Match.where('name LIKE ?', "%#{params[:q]}%").page(params[:page])
    #else
      #team = Team.find(params[:query_team][:team_id])
      #@matches = team.matches.where('name LIKE ?', "%#{params[:q]}%").page(params[:page])
    #end
  end
end
