class BrandsController < ApplicationController
  before_action :get_brand, only: [:show, :edit, :destroy, :update]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to @brand
    else
      render 'new'
    end

  end

  def show
    @brand = Brand.find(params[:id])
  end

  def edit
  end

  def update

    if @brand.update(brand_params)
      redirect_to @brand
    else
      render 'edit'
    end

  end

  def destroy
    @brand.destroy
    redirect_to brands_path
  end

  def brand_params
    params.require(:brand).permit(:title)
  end
  def get_brand
    @brand = Brand.find(params[:id])
  end
end
