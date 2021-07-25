Rails.application.routes.draw do

  get '/projects', to: 'projects#index'
  post '/todos', to: 'todos#create'
  patch '/projects/:id/todo/:id', to: 'todos#update'
end
