class AddNotesToWishlists < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :notes, :string
  end
end
