Rails.application.routes.draw do
 resources :todos
  post 'todos/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
