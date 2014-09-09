class Message < ActiveRecord::Base

  attr_accessor :saved
  before_create :send_message

private

  def send_message
    begin
      response = RestClient::Request.new(
        :method => :post,
        :url => "https://api.twilio.com/2010-04-01/Accounts/ACd9467dec7652a2cf5516d8aa00d49fc4/Messages.json",
        :user => ENV['TWILIO_ACCOUNT_SID'],
        :password => ENV['TWILIO_AUTH_TOKEN'],
        :payload => { :Body => body,
                      :To => to,
                      :From => from }
      ).execute
    rescue
      false
    end
  end

end
