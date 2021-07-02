class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :name
      t.integer :money
      t.string :image
      t.integer :color

      t.timestamps
    end
  end
end
