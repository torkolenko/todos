Rails.application.routes.draw do

  resources :projects, controller: 'projects' do
    resources :todo, controller: 'todos'
  end
end
