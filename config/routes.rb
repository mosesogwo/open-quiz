Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'

  namespace :api do
    namespace :v1 do
    	resources :quizzes
    end
  end
end
