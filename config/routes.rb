Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks
  ### Line 3 sums up line 5 to 11.
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # patch 'tasks/:id', to: 'tasks#update'
  # delete "tasks/:id", to: "tasks#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
