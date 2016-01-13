Rails.application.routes.draw do
  root 'polls#index'

  get '/' => 'polls#index'

  resources :polls
end
