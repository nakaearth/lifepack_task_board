class User < ActiveRecord::Base
  has_many :tasks, :order =>"priority"
end
