class TeamstatsController < ApplicationController

  def index
    @groups = Group.all
    @groupstats = Teamstat.all
  end

  def show
    @groupstats = Teamstat.all
    #@group = Group.find(params[:id])
    #@teamstats = @group.teamstats
  end

  def new
    @team_stat = Teamstat.new
  end

end
