class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.string :image
      t.string :author

      t.timestamps
    end
  end
end
