json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :content, :user_id, :node_id
  json.url topic_url(topic, format: :json)
end
