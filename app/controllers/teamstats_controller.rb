class TeamstatsController < ApplicationController
  #!--- Added by AlvaroD ----#
    before_filter :authenticate_user!

  def index
    @groups = Group.all
    @groupstats = Teamstat.all
  end

  def show
    @group = Group.find params[:id]
    @groupstats = Teamstat.all
    #@group = Group.find(params[:id])
    #@teamstats = @group.teamstats
  end

  def new
    @team_stat = Teamstat.new
    authorize @team_stat
  end

end
