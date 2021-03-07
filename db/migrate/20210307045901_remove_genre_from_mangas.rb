class RemoveGenreFromMangas < ActiveRecord::Migration[6.1]
  def change
    remove_column :mangas, :genre, :string
  end
end
