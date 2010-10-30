class AddColumnGroupIdForTasks < ActiveRecord::Migration
  def self.up
     add_column :tasks, :group_id,:integer, :default=>"0", :null => false
     add_index :tasks, [:group_id,:user_id,:created_at]
  end

  def self.down
    remove_column :tasks, :group_id
    drop_index :tasks,[:group_id,:user_id,:created_at]
  end
end
