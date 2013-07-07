class Categories < ActiveRecord::Base
  has_many :recipes
  attr_accessible :category_name, :categories_id
end
