class CreateMangasGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas_genres do |t|
      t.references :manga, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
