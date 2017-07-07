Rails.application.routes.draw do
  
  devise_for :users
  
  root 'static_pages#root'
  
  resources :users do
    resource :profile
  end
  
end
