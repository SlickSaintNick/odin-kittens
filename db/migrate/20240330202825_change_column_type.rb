class ChangeColumnType < ActiveRecord::Migration[7.1]
  def change
    change_column :kittens, :age, :integer
    change_column :kittens, :cuteness, :integer
    change_column :kittens, :softness, :integer
  end
end
