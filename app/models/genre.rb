class Genre < ApplicationRecord
    has_many :mangas_genres
    has_many :mangas, through: :mangas_genres
end
