Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index", as: "tasks"

  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create", as: "create_task"

  get "task/:id", to: "tasks#show", as: "task"

  get    "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch  "task/:id", to: "tasks#update"

  delete "task/:id", to: "tasks#destroy"

end
