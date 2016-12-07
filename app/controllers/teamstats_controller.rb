class TeamstatsController < ApplicationController
  def index
    @team_stats = TeamStats.all
  end

  def show
    #@group = Group.find(params[:id])
    #@teamstats = @group.teamstats
  end
end
