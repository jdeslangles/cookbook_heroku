module ApplicationHelper

  def define_background
    if @recipe
     @recipe.recipe_image.url
    elsif @ingredient
     @ingredient.ingredient_image.url
    else
      raw "'/assets/texture3.jpg'"
     end
  end
end


# background-image: url(<%= define_background %>); background-size: cover;