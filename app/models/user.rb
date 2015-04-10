class User < ActiveRecord::Base
  has_many :topics
  has_many :replies

  mount_uploader :avatar, AvatarUploader



  def identity
    Identity.find_by_id(self.uid)
  end

  def self.from_omniauth(auth)  
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)  
  end
  
  def self.create_with_omniauth(auth)
    create! do |user|  
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.nickname = auth["info"]["name"]
      user.email = auth["info"]["email"]
    end
  end



end
