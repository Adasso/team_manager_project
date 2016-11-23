Rails.application.routes.draw do
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

  devise_for :users
  #root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
