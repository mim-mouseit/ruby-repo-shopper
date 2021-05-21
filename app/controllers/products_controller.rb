class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        if params[:id].present?
            @product = Product.find(params[:id])
        end
        # @product = Product.find([:id])
    end

    def new
        @product = Product.new
    end

    def create
        # render plain: params[:product].inspect
        @product = Product.new(product_params)

        # # save method to actually save
        if(@product.save)
            # # redirect to that product
            redirect_to @product
        else
            render 'new'
        end
    end

    private def product_params
        params.require(:product).permit(:product_name, :description)
    end 
end
