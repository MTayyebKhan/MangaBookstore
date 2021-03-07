class Manga < ApplicationRecord
  belongs_to :writer
  has_many :mangas_genres
  has_many :genres, through: :mangas_genres

  def list_genres
    (self.genres.map {|genre| genre.name}).join(', ')
  end
end
