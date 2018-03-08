class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(params[:category].permit(:name))
    if @category.save
      redirect_to "/categories", notice: "Succesfuly created #{@category.name}"
    else
      render action: "new"
    end
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    previous_name = @category.name
    if @category.update_attributes(params[:category].permit(:name))
      redirect_to categories_path(@category.id), notice: "Succesfuly updated from #{previous_name} to #{@category.name}"
    else
      render action: "edit"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path, notice: "Succesfuly deleted #{@category.name}"
  end
end
