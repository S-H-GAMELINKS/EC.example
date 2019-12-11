class AddDefaultQuantityToCartItem < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cart_items, :quantity, default: 0, null: false
  end
end
