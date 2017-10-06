class CategoriesController < ApplicationController

  def index
    p "Got to the root"
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    items = @category.items
    render json: items.to_json
  end

end
