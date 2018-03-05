Rails.application.routes.draw do
  post 'user_tasks/create/:id', to: 'user_tasks#create', as: 'hecha'

  delete 'user_tasks/destroy/:id', to: 'user_tasks#destroy', as: 'por_hacer'

  devise_for :users
  resources :tasks, only: [:index, :show] 

  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
