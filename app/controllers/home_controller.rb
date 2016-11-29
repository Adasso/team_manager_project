class HomeController < ApplicationController
    def send_sms
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
  def index
  end
end
