class RemoveCartIdConstraintFromOrder < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:line_items, :cart_id, false)
  end
end
