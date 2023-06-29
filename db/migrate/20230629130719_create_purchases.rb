class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
