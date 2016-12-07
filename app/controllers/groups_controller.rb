class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find params[:id]
    @teamstats = @group.teamstats
  end

  #!--- Added by Naga  ----#
  def send_per_person_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'AC2ae9c3f43a9305ce257c141915434eb8'
    auth_token = '91c25d476b725885aa4ac8d138d24e0e'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                                :from => "+15057388535",
                                                :body => "#{message}"})
    redirect_to '/'
  end




  def join
    @group = Group.find params[:id]
    current_user.update_attribute(:group_id, @group.id)
    redirect_to @group
  end

  def leave
    @group = Group.find params[:id]
    current_user.update_attribute(:group_id, nil)
    redirect_to @group
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end
end
