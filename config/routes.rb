Rails.application.routes.draw do

  resources :messages, :only => [:new, :create] do
    resources :contacts, :only => [:new, :create]
  end

  resources :contacts, :only => [:show] do
    resources :text_contacts, :only => [:new, :create]
  end

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root :to => 'home#index'


end
