class AddGradeToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :grade, :integer
  end
end
