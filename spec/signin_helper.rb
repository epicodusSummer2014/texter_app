
def sign_in(user)
  visit '/'
  fill_in :user_email, :with => user.email
  fill_in :user_password, :with => user.password
  click_button ""
end
