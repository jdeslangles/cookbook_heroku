class SearchController < ApplicationController
  def index
    @q = Recipe.search(params[:q])
    @recipes = @q.result(distinct: true) # 'distinct' will only get one instance of each article if they match my search
    if @q.result.empty?
      flash[:error] = "No matches for #{params[:q]["title_or_ingredients_name_or_categories_category_name_or_author_cont"]} - sorry :("
      # flash[:error] = "No matches for #{params[:q]["title_cont"]} - sorry :("

    end
  end

  def search
    index
    render :index
  end





end
