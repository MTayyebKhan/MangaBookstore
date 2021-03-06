class AddGenreToMangas < ActiveRecord::Migration[6.1]
  def change
    add_column :mangas, :genre, :string, default: "unknown"
  end
end
