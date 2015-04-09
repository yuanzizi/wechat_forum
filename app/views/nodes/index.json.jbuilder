json.array!(@nodes) do |node|
  json.extract! node, :id, :name, :order_id, :topics_number
  json.url node_url(node, format: :json)
end
