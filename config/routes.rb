Rails.application.routes.draw do
 get 'todos/index'
 get 'todos/destroy'
  get 'todos/edit'
 get 'todos/new'
 get 'todos/create'
  post 'todos/new'
  post 'todos/index'
  post 'todos/edit'
  get 'todos/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
