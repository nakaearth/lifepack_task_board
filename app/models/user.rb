require 'carrierwave/orm/activerecord'
class User < ActiveRecord::Base
  validates :name,:presence =>true, :uniqueness=>true
  has_many :tasks, :order =>"priority"
  has_many :groups, :order =>"created_at"
  mount_uploader :avatar, AvatarUploader
end
