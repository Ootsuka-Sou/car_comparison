class AddMoneyIntegerToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :money, :integer
  end
end
