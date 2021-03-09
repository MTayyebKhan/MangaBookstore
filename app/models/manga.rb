class Manga < ApplicationRecord
  belongs_to :writer
  has_many :mangas_genres, dependent: :destroy
  has_many :genres, through: :mangas_genres
  accepts_nested_attributes_for :writer
  has_one_attached :cover

  validates :price, :inclusion => 1..1000

  def list_genres
    (self.genres.map {|genre| genre.name}).join(', ')
  end

  def can_edit?(user)
    return user && user.has_role?(:admin)
  end
end
