class Group < ActiveRecord::Base
  scope :latest ,order('created_at desc')
  belongs_to :user
  
  def self.your_group(id)
    @groups =Group.where('user_id=?',id)
    if @groups==nil
      return Array.new
    else
      return @groups
    end
  end

  def self.select_item_groups(id)
     @groups =Group.where('user_id=?',id)
     @default_group = Group.new
     @default_group.name="NOT SELECT"
     @default_group.id=0
     @default_group.description="NOT SELECT"
     @groups.push  @default_group
  end

end
