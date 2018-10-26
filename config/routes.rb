Rails.application.routes.draw do
  get 'home/index'
  resources :teams , only:[:index, :show]
  resources :matches, only:[:index, :show]
  resources :about , only:[:index]
  resources :season , only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
