class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params[:id])
    @category.save
    redirect_to new_list
  end

  def destroy
    # @category = Category.find(category_params[:id])
    # @category.delete
    # redirect_to new_list
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
