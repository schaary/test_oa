Rails.application.routes.draw do

  root "home#index"
  get 'home/index'
  post 'home/decide', to: 'home#decide'
  get 'success', to: 'success#index'
  get 'failure', to: 'failure#index'
end
