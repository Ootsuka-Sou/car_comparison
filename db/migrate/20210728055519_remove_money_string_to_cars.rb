class RemoveMoneyStringToCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :money, :string
  end
end
