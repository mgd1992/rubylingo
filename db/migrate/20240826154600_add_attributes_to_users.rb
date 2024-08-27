class AddAttributesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :is_teacher, :boolean, default: false
    add_column :users, :challenges_per_day, :integer
    add_column :users, :knowledge_level, :integer
    add_column :users, :ruby_gems, :integer
  end
end
