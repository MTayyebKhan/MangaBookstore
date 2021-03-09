Rails.application.routes.draw do
  get 'orders/new/:manga_id', to: "orders#new", as: "new_order"
  get 'orders/success', to: "orders#success", as: "order_success"
  get 'orders/cancel', to: "orders#cancel", as: "order_cancel"
  devise_for :users
  root to: "mangas#index"
  resources :mangas
  # get "/mangas", to: "mangas#index"
  # get "/mangas/new", to: "mangas#new", as: "new_manga"
  # get "/mangas/:id", to: "mangas#show", as: "manga"
  # get "/mangas/:id/edit", to: "mangas#edit", as: "edit_manga"
  # get "/mangas/:id", to: "mangas#update"
  # post "/mangas", to: "mangas#create"
  get "/writers", to: "writers#index"
  get "/writers/:id", to: "writers#show", as: "writer"
end
