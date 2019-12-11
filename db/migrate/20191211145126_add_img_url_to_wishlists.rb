class AddImgUrlToWishlists < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :img_url, :string
  end
end
