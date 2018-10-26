Rails.application.routes.draw do
  get 'teams/index'
  get 'teams/show'
  get 'matches/index'
  get 'matches/show'
  resources :about , only:[:index]
  resources :seasons , only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
