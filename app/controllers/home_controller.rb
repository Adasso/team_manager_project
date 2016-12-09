class HomeController < ApplicationController
#!--- Added by AlvaroD ----#
  before_filter :authenticate_user!
#  after_action :verify_authorized

#!--- Added by  ----#
def index
    @meetings = Meeting.all
end
    def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'AC2ae9c3f43a9305ce257c141915434eb8'
    auth_token = '91c25d476b725885aa4ac8d138d24e0e'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                                :from => "+15057388535",
                                                :body => "#{message}"})
    redirect_to '/', :flash => { :notice => "Message sent successfully." }
  end


    #!--- Added by  ----#
    def send_group_sms
    message = params[:message]
    numbers = params[:numbers]
    account_sid = 'AC2ae9c3f43a9305ce257c141915434eb8'
    auth_token = '91c25d476b725885aa4ac8d138d24e0e'
    ph_array = numbers.split(',')
    ph_array.each do |number|
      @client = Twilio::REST::Client.new account_sid, auth_token

      @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                                :from => "+15057388535",
                                                :body => "#{message}"})
    end
    #@client = Twilio::REST::Client.new account_sid, auth_token

    #@message = @client.account.messages.create({:to => "+1"+"#{number}",
    #                                            :from => "+15057388535",
    #                                            :body => "#{message}"})
    redirect_to '/', :flash => { :notice => "Message sent successfully." }
  end

end
