class Topic < ActiveRecord::Base
  belongs_to :node
  belongs_to :user
  has_many :replies
end
