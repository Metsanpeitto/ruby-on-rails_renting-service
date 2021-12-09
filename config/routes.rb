Rails.application.routes.draw do  
  get 'current_user/index'
  devise_for :users, defaults: { format: :json }, path: '',
            path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' } 
  resources :reservations
  resources :items
end
