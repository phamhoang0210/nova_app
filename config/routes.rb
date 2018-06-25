Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'admin' => 'dashboard#index'
    get 'environment' => 'environment#index'
    get 'service' => 'services#index'
    get 'variable' => 'variables#index'

    resources:environment
    resources:services
    resources:variables

    get  '/login' => 'sessions#new'
    post '/login',   to: 'sessions#create'
    delete '/logout'   => "sessions#destroy"
end
