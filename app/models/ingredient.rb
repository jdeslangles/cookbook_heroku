class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  attr_accessible :name, :recipe_ids, :image_url
end
