class User < ActiveRecord::Base
  has_many :tasks, :order =>"priority"
  has_many :groups, :order =>"created_at"
end
