Rails.application.routes.draw do
  root 'todos#home'
  resources :todos #automatically includes all basic CRUD routes
end
