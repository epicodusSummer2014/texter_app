require 'rails_helper'

describe Message do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '3144925314')
    expect(message.save).to eq false
  end
end
