class Group < ActiveRecord::Base
  scope :latest ,order('created_at desc')
  belongs_to :user
end
