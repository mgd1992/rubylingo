class AddDefaultValueToIsTeacher < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :ruby_gems, :integer, default: 0
  end
end
