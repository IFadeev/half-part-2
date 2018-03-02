Rails.application.routes.draw do

  post 'todos/create'
  post 'todos/update'
  root 'projects#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
