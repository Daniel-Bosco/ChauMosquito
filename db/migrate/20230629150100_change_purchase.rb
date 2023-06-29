class ChangePurchase < ActiveRecord::Migration[6.1]
  def change
    change_column :purchases, :description, :integer, using: 'description::integer'
    rename_column :purchases, :description, :quantity
  end
end
