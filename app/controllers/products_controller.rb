class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all.map { |c| [c.title, c.id] }
    @brands = Brand.all.map { |c| [c.title, c.id] }
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:title, :content, :category_id, :brand_id)
  end
end
