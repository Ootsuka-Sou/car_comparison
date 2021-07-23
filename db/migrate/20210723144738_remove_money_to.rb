class RemoveMoneyTo < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :money, :integer
  end
end
