class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Sent Message"
    else
      flash[:alert] = "Message Not Sent"
    end
    redirect_to root_path
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body)
  end

end
