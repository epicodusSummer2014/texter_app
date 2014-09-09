class HomeController < ApplicationController

  before_filter :authenticate_user!, :only => :index

  def index
    @contacts = current_user.contacts
  end

end
