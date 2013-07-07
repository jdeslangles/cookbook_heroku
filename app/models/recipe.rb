class Recipe < ActiveRecord::Base
  belongs_to :categories
  has_and_belongs_to_many :ingredients
  attr_accessible :author, :image, :instructions, :title, :ingredient_ids, :categories_id, :category_name
end
