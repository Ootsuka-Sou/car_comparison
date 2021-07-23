class AddMoneyToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :money, :string
  end
end
