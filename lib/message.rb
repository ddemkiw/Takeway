require_relative 'token'
require 'twilio-ruby'

class Message

  include Token

    def initialize
      account_sid = sid
      auth_token = token
      @client= Twilio::REST::Client.new account_sid, auth_token
    end

    def time
      (Time.now + 3600).strftime("%H:%M")
    end
    
    def send_message(number)
      @client.account.messages.create({
        :to => number.to_s,
        :from => "+441183247085",
        :body => "Your order has been received and will be delivered before #{time}"
          })
    end

end