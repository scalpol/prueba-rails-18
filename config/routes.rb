Rails.application.routes.draw do

  devise_for :users
  resources :tasks, only: [:index, :show] do
      resources :user_tasks, only: [:create, :destroy]
  end

  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
