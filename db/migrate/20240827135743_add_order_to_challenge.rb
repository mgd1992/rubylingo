class AddOrderToChallenge < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :order, :integer
  end
end
