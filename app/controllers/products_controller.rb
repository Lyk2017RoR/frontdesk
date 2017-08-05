class ProductsController < ApplicationController
  before_action :find_product, only: %i[edit show update destroy]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all.map { |c| [c.title, c.id] }
    @brands = Brand.all.map { |c| [c.title, c.id] }
    @tags = Tag.all.map { |c| [c.title, c.id ]}
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

  def edit
  end

  def update
    @product.category_id = params[:category_id]
    @product.brand_id = params[:brand_id]
    @product.tag_id = params[:tag_ids]

    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render 'edit'
    end

  end

  private
  def product_params
    params.require(:product).permit(:title, :content, :category_id, :brand_id, :price, tag_ids: [])
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
