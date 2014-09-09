# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "swordfish"
    password_confirmation "swordfish"
  end
end
