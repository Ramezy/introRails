class SeasonController < ApplicationController
  def index
    @seasons = Season.all.page params[:season]
  end

  def show
    @season = Season.find(params[:id])
  end
end
