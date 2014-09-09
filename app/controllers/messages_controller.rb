class MessagesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

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
    if params[:message][:saved] == "1"
      redirect_to new_message_contact_path(@message)
    else
      redirect_to root_path
    end
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body, :saved )
  end

end
