Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ ALL -------------------------------

  get "tasks", to: "tasks#index", as: "tasks"

  # CREATE ONE -------------------------------

  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create"

  # READ ONE -------------------------------

  get "task/:id", to: "tasks#show", as: "task"

  # UPDATE ONE -------------------------------

  get    "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch  "task/:id", to: "tasks#update"

  # DELETE ONE -------------------------------

  delete "task/:id", to: "tasks#destroy"

end
