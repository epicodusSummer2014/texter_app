class Message < ActiveRecord::Base

  before_create :send_message

private

  def send_message(params)
    response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/ACd9467dec7652a2cf5516d8aa00d49fc4/Messages.json",
      :user => 'ACd9467dec7652a2cf5516d8aa00d49fc4',
      :password => '32dba31cf5ceb3f575939aca11f2fda7',
      :payload => { :Body => params[:body],
                    :To => params[:to],
                    :From => params[:from] }
    ).execute
  end

end
