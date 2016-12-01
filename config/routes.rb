Rails.application.routes.draw do
  resources :groups do
    member do
      get 'join'
      get 'leave'
    end
  end
  resources :people
  #devise_scope :user do
  #  root to: "devise/sessions#new"
  #end

  #def after_sign_in_path_for(resource_or_scope)
   #signed_in_root_path(resource)
  #end

  #def after_sign_out_path_for(resource_or_scope)
    # your_path
  #end
  resources :home

  authenticated :user do
    root :to => "home#index"
  end


  root :to => redirect("/users/sign_in")

  devise_for :users, :controllers => { registrations: 'registrations' }
  #root 'home#index'

  # Added by vj
  post '/send_sms' => 'home#send_sms'

  get 'messages', to: 'home#messages'
  get 'schedule', to: 'home#schedule'
  get 'statistics', to: 'home#statistics'

end
