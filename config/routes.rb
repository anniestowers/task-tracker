Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  root to: 'home#index'

  get '/home' => 'home#index', as: :home
  get '/about' => 'home#about', as: :about

  resources :tasks
end
