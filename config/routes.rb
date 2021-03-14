Rails.application.routes.draw do
  get '/search', to: "mangas#search"
  get 'orders/new/:manga_id', to: "orders#new", as: "new_order"
  get 'orders/success', to: "orders#success", as: "order_success"
  get 'orders/cancel', to: "orders#cancel", as: "order_cancel"
  devise_for :users
  root to: "mangas#index"
  resources :mangas
  get "/writers", to: "writers#index"
  get "/writers/:id", to: "writers#show", as: "writer"
end
