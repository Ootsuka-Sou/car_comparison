class Add2GradeToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :grade, :string
  end
end
