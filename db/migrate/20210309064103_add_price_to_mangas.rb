class AddPriceToMangas < ActiveRecord::Migration[6.1]
  def change
    add_column :mangas, :price, :decimal, precision: 8, scale: 2, default: 30.00
  end
end
