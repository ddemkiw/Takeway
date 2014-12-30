require_relative 'token'

class Message
        
  require 'twilio-ruby'


  def send_message
    account_sid = @sid
    auth_token = @token
    
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(:body => "Your order has been received and will be delivered before #{time}",
    :to => "+4407730344711",
    :from => "+441202629486")
  
  end

end