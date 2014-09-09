require 'rails_helper'
require 'signin_helper'

describe 'creating a new message' do
  before do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end

  it 'logs in successfully' do
    expect(page).to have_content "welcome"
  end

  it 'accesses the new message page' do
    click_link "send-message"
    expect(page).to have_content "From"
  end
end
