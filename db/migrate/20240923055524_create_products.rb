class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.bigint :price
      t.integer :sales_count
      t.timestamps
    end
  end
end
