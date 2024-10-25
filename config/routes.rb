Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :needs, only: [:index, :show, :new, :create, :edit, :update]
  resources :helps, only: [:index, :show, :new, :create, :edit, :update]

  # Ruta raíz de la aplicación
  root "needs#index"
end
