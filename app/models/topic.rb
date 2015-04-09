class Topic < ActiveRecord::Base
  belongs_to :node
  belongs_to :user
  has_many :replies
  validates_presence_of :title
  validates_presence_of :content
  validates_length_of :title, within: 6..20, too_long: '标题必须少于20个字之前', too_short: '标题必须大于6个字'
  
  
end
