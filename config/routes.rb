Todolist::Application.routes.draw do
  resources :days

  resources :eveninglists

  resources :morninglists

  root :to => 'days#index'

end
