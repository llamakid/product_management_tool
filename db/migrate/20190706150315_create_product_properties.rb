class CreateProductProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :product_properties do |t|
      t.string :value
      t.integer :product_id
      t.integer :property_id

      t.timestamps
    end
  end
end
