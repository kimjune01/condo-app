json.array!(@condos) do |condo|
  json.extract! condo, :id, :address, :floor, :room, :contact, :manager
  json.url condo_url(condo, format: :json)
end
