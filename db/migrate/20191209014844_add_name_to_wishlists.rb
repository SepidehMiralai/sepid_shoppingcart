class AddNameToWishlists < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :name, :string
  end
end
