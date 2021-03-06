Rails.application.routes.draw do
  get "/", to: "mangas#index"
  get "/mangas", to: "books#index"
end
