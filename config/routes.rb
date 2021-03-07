Rails.application.routes.draw do
  get "/", to: "mangas#index"
  get "/mangas", to: "mangas#index"
  get "/mangas/:id", to: "mangas#show", as: "manga"
  get "/writers", to: "writers#index"
  get "/writers/:id", to: "writers#show", as: "writer"
end
