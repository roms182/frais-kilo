Rails.application.routes.draw do
  root to: 'travel_expenses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :travel_expenses

end
