class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :image, :image_url
  end
end
