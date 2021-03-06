Rails.application.routes.draw do
  get "/", to: "mangas#index"
  get "/mangas", to: "mangas#index"
  get "/mangas/:id", to: "mangas#show", as: "manga"
end
