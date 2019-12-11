class CartsController < ApplicationController
    before_action :set_cart_item
    before_action :set_product

    def create
        if @cart_item.blank?
            puts 'Cart item'
            @cart_item = current_user.cart.cart_items.build(product_id: params[:product_id])
        end

        if @cart_item.quantity.nil?
            @cart_item.quantity = 0
        end
        @cart_item.quantity += params[:quantity].to_i
        @cart_item.save
        redirect_to @product
    end

    private
        def set_cart_item
            @cart_item = current_user.cart.cart_items.find_by(product_id: params[:product_id])
        end

        def set_product
            @product = Product.find(params[:product_id])
        end
end
