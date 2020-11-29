class ProductsController < ActionController::Base

    def index
        products = Product.all 
    end

    def add
        @product = Product.find(params[:id])
        # cart = session[:cart] || []
        cart << @product.id 
        session[:cart] = cart
    end

end
