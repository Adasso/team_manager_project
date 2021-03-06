class UserstatsController < ApplicationController
  before_filter :authenticate_user!

def index
  @users = User.all
  @userstats = Userstat.all
end

def show
  @user = User.find params[:id]
  @userstats = Userstat.all
  #@group = Group.find(params[:id])
  #@teamstats = @group.teamstats
end

def new
  @userstat = Userstat.new
  authorize @userstat
end

#  before_action :set_userstat, only: [:show, :edit, :update, :destroy]

  # GET /userstats
  # GET /userstats.json
#  def index
#    @userstats = Userstat.all
#  end

  # GET /userstats/1
  # GET /userstats/1.json
#  def show
#  end

  # GET /userstats/new
#  def new
#    @userstat = Userstat.new
#  end

  # GET /userstats/1/edit
#  def edit
#  end

  # POST /userstats
  # POST /userstats.json
#  def create
#    @userstat = Userstat.new(userstat_params)

#    respond_to do |format|
#      if @userstat.save
#        format.html { redirect_to @userstat, notice: 'Userstat was successfully created.' }
#        format.json { render :show, status: :created, location: @userstat }
#      else
#        format.html { render :new }
#        format.json { render json: @userstat.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # PATCH/PUT /userstats/1
  # PATCH/PUT /userstats/1.json
#  def update
#    respond_to do |format|
#      if @userstat.update(userstat_params)
#        format.html { redirect_to @userstat, notice: 'Userstat was successfully updated.' }
#        format.json { render :show, status: :ok, location: @userstat }
#      else
#        format.html { render :edit }
#        format.json { render json: @userstat.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /userstats/1
  # DELETE /userstats/1.json
#  def destroy
#    @userstat.destroy
#    respond_to do |format|
#      format.html { redirect_to userstats_url, notice: 'Userstat was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end

#  private
    # Use callbacks to share common setup or constraints between actions.
#    def set_userstat
#      @userstat = Userstat.find(params[:id])
#    end

    # Never trust parameters from the scary internet, only allow the white list through.
#    def userstat_params
#      params.require(:userstat).permit(:games_played, :minutes_played, :goals, :yellow_cards, :red_cards)
#    end
end
