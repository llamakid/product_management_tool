class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :upc
      t.datetime :available_on

      t.timestamps
    end
  end
end
