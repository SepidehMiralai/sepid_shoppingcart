class AddWishlistIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :wishlist_id, :integer
  end
end
