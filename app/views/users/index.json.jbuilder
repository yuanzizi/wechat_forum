json.array!(@users) do |user|
  json.extract! user, :id, :nickname, :avatar, :sex, :email
  json.url user_url(user, format: :json)
end
