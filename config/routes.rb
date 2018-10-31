Rails.application.routes.draw do
  resources :home, only:[:index]
  root to: 'home#index'
  resources :teams , only:[:index, :show]
  resources :matches, only:[:index, :show]
  resources :about , only:[:index]
  resources :season , only:[:index, :show]

  resources :search ,only:[:index] do
    collection do
      get 'results'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
