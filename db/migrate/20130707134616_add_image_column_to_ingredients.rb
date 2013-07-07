class AddImageColumnToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :image, :string
  end
end
