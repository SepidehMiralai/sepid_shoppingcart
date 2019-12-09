class AddDateCreatedToWishlists < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :date_created, :date
  end
end
