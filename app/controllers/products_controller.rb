class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product].permit(:name, :description, :price, :category_id, :stock, :cod_eligibility, :image_url))
    if @product.save
      redirect_to product_path(@product.id), notice: "Successfully created a product"
    else
      render action: "new"
    end
  end

  def show
    @review = Review.new
    @cart_line_item = CartLineItem.new
    begin
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to product_path, notice: "Record not found"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to product_path(@product.id),notice: "Successfully Updated Record "
    else
      render edit_product_path(@product.id)
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path,notice:"Successfully Deleted Record"
  end

  def review
    @review = Review.new
  end

  private
  #strong parameters / safe guard from mass assignment
  def product_params
    params[:product].permit(:name, :description, :price, :category_id, :stock, :cod_eligibility, :image_url, :sub_category_id)
  end
end
