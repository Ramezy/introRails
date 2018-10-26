class TeamsController < ApplicationController
  def index
    @teams = Team.all.page params[:page]
  end

  def show
    @team = Team.find(params[:id])
  end
end
