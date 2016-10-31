Rails.application.routes.draw do
  resources :disasters
  resources :natural_disaster_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/natural_disaster_categories')
end
