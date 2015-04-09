class User < ActiveRecord::Base
  has_many :topics
  has_many :replies

  mount_uploader :avatar, AvatarUploader

end
