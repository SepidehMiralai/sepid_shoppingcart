class RemoveWishlistIdFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :wishlist_id, :string
  end
end
