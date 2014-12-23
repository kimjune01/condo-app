json.array!(@messages) do |message|
  json.extract! message, :id, :content, :content_type
  json.url message_url(message, format: :json)
end
