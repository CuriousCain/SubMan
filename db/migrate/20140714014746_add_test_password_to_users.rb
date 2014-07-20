class AddTestPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :test_password, :string
  end
end
