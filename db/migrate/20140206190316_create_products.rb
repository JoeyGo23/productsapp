class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :picture
      t.integer :cost
      t.string :item
      t.text :description

      t.timestamps
    end
  end
end
