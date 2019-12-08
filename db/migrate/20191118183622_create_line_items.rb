class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references :product, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end

  def up
    change_column_null :line_items, :order_id, true
  end
  
  def down
    change_column_null :line_items, :order_id, false
  end

end
