class Reply < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  validates_presence_of :content
  validates_length_of :content, minimum: 2, too_short: '标题必须大于2个字'
  
end
