class AddColumnUserId < ActiveRecord::Migration
  def self.up
     add_column :tasks, :user_id,:integer, :default=>"0", :null => false
     add_index :tasks, [:user_id,:status,:updated_at]
  end

  def self.down
     drop_index :tasks,[:user_id,:updated_at]
  end
end
