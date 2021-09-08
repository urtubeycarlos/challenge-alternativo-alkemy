Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'paises/index'
      get 'paises/show'
      get 'paises/create'
      get 'paises/update'
      get 'paises/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'continentes/index'
      get 'continentes/show'
      get 'continentes/create'
      get 'continentes/update'
      get 'continentes/delete'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :continentes
    end
  end
end
