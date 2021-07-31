class RemoveColorIntegerToCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :color, :integer
  end
end
