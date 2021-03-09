class Manga < ApplicationRecord
  belongs_to :writer
  has_many :mangas_genres
  has_many :genres, through: :mangas_genres
  accepts_nested_attributes_for :writer

  def list_genres
    (self.genres.map {|genre| genre.name}).join(', ')
  end

  def can_edit?(user)
    return user && user.has_role?(:admin)
  end
end
