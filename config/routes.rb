Rails.application.routes.draw do
  devise_for :users
  root to: "mangas#index"
  get "/mangas", to: "mangas#index"
  get "/mangas/new", to: "mangas#new", as: "new_manga"
  get "/mangas/:id", to: "mangas#show", as: "manga"
  post "/mangas", to: "mangas#create"
  get "/writers", to: "writers#index"
  get "/writers/:id", to: "writers#show", as: "writer"
end
