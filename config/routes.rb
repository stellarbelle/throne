Rails.application.routes.draw do
  root 'users#index'
  post 'users/create' => 'users#create'
  post 'sessions/create' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy'
  get 'users/:id' => 'users#show'
end
