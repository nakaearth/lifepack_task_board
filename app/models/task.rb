class Task < ActiveRecord::Base
  validates :title,:description,:priority,:status,:presence =>true
  scope :todo ,where('status=1')
  scope :doing ,where('status=2')
  scope :done ,where('status=3')
  scope :latest ,order('created_at desc')
  belongs_to :user
end
