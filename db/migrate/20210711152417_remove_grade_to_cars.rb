class RemoveGradeToCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :grade, :string
  end
end
