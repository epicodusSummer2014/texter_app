class ContactsController < ApplicationController
  def new
    @message = Message.find(params[:message_id])
    @contact = Contact.new
  end

  def create
    @user = current_user
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render'new'
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :phone_number)
  end

end
