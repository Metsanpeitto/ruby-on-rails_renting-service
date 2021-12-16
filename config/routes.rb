Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root to: "items#index"
  get 'current_user/index'
  
  devise_for :users, defaults: { format: :json }, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }
  resources :reservations
  resources :items
end
