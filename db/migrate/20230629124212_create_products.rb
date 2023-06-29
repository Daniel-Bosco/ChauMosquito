class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.references :product_type, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
