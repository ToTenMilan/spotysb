Rails.application.routes.draw do
  #get 'comments/create'

  resources :spots do
    resources :comments
  end
  root 'spots#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
