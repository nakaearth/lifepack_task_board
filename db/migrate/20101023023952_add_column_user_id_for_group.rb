class AddColumnUserIdForGroup < ActiveRecord::Migration
  def self.up
     add_column :groups, :user_id,:integer, :default=>"0", :null => false
     add_index :groups, [:user_id,:created_at]
  end

  def self.down
     drop_index :groups,[:user_id,:created_at]
  end
end
