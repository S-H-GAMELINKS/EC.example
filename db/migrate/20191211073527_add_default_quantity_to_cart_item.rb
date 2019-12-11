class AddDefaultQuantityToCartItem < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cart_item, :quantity, 0
  end
end
