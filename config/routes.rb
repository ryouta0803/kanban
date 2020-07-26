Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :user, only: %i(edit update)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end
