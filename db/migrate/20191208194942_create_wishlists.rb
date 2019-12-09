class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
