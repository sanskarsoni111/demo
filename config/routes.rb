Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  


  
  # :users
  devise_for :users
    
  

  resources :leaveinfos
  root to: 'leaveinfos#index'
  
   
   
   
  #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
