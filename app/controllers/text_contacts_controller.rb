class TextContactsController < ApplicationController

  def new
    @message = Message.new
    @contact = Contact.find(params[:contact_id])
  end

  def create
  end
end
