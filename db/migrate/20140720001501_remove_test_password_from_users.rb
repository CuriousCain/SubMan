class RemoveTestPasswordFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :test_password
  end
end
