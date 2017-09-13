Rails.application.routes.draw do

  scope ":locale", locale: /en|fr/ do
    root to: 'travel_expenses#index'
    resources :travel_expenses
    get '/test', to: 'pages#test'
  end

end
