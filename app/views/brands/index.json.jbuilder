json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :logo_url
  json.url brand_url(brand, format: :json)
end
