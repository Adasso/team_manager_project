class TeamstatsController < ApplicationController
  def index
    @team_stats = Teamstats.all
  end

  def show
    #@group = Group.find(params[:id])
    #@teamstats = @group.teamstats
  end

  def new
    @team_stat = Teamstat.new
  end

end
