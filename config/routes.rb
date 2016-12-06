Rails.application.routes.draw do
  resources :meetings
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
  post '/send_group_sms' => 'home#send_group_sms'
  post '/send_per_person_sms' => 'groups#send_per_person_sms'

  get 'messages', to: 'home#messages'
  get '/home/create_sms/:id', to: 'home#create_sms', as: 'create_sms'
  get '/groups/create_sms_per_person/:id', to: 'groups#create_sms_per_person', as: 'create_sms_per_person'
  get 'schedules', to: 'home#schedules'
  get 'statistics', to: 'home#statistics'

end
