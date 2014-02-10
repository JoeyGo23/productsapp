class PagesController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    @products = Product.order(:cost)
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def add_to_cart
     
      product = Product.find(params[:id])
      @cart = find_cart
      @current_item = @cart.add_product(product)
    end

    def line_item
      @line_items = LineItem.all
    end


end
