class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(params.require(:product).permit(:name, :price))
      redirect_to @product
    else
      flash[:error] = @product.errors.full_messages.join(", ")
      render :edit
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end
end
