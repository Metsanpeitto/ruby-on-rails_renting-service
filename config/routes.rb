Rails.application.routes.draw do
  resources :items
namespace :api do
    namespace :v1,  defaults: { format: 'json' } do
    
    end
  end  
end
